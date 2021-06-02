defmodule OraTest do
  use ExUnit.Case
  doctest Ora

  test "greets the world" do
    assert Ora.hello() == :world
  end
end
