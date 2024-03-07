defmodule Main do
  def start do
    loop()
  end

  defp loop do
    IO.puts("Menu:")
    IO.puts("1. Check if a number is even or odd")
    IO.puts("2. Exit")

    case IO.gets("") |> String.trim() do
      "1" ->
        check_number()
        loop()
      "2" ->
        IO.puts("Exiting...")
      _ ->
        IO.puts("Invalid option. Please choose again.")
        loop()
    end
  end

  defp check_number do
    IO.puts("Enter the number:")
    rows = IO.gets("") |> String.trim() |> String.to_integer()

    case rows do
      number when rem(number, 2) == 0 ->
        IO.puts("#{number} is Even")
      number ->
        IO.puts("#{number} is Odd")
    end
  end
end

Main.start()
