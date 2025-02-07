defmodule AutoUpdaterTestappTest do
  use ExUnit.Case
  doctest AutoUpdaterTestapp

  test "greets the world" do
    assert AutoUpdaterTestapp.hello() == :world
  end
end
