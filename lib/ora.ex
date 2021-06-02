defmodule Ora do
  alias Ora.Repo
  import Ecto.Query, only: [from: 2]

  @moduledoc """
  Documentation for Ora.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Ora.hello()
      :world

  """
  def start do
    {:ok, conn} =
      Jamdb.Oracle.connect(
        hostname: "192.168.0.201",
        port: 1521,
        database: "dbhomol",
        username: "tasy",
        password: "aloisk",
        timeout: 15000
      )

    conn 
    |> Jamdb.Oracle.query('SELECT * FROM atendimento_paciente where dt_entrada =:data_entrada', [{{01, 01, 2020}, {00,00,00}}])
    |> IO.inspect
  end
end
