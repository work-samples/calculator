defmodule Calculator do


  @doc"""
  Add up all the numbers together

  ## Examples

      iex> Calculator.add([])
      0

      iex> Calculator.add([99])
      99

      iex> Calculator.add([21,15,9])
      45

      iex> Calculator.add([1,2])
      3

  """
  def add([]), do: 0
  def add([h]), do: h
  def add([h|tail]), do: h + add(tail)

end
