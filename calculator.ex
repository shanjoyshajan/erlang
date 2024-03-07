defmodule Calculator do
  def get_input(prompt) do
    IO.gets(prompt) |> String.trim
  end

  def parse_number(text) do
    case Float.parse(text) do
      {:ok, number} -> number
      {:error, _} -> IO.puts("Invalid number. Please enter a valid number.")
      _ -> IO.puts("Unexpected error parsing input.")
    end
  end

  def get_operator do
    valid_operators = ["+", "-", "*", "/"]
    prompt = "Enter operator (+, -, *, /): "
    loop do
      operator = get_input(prompt)
      if Enum.member?(valid_operators, operator) do
        operator
      else
        IO.puts("Invalid operator. Please choose from: #{valid_operators.join(", ")}")
      end
    end
  end

  def perform_operation(num1, operator, num2) do
    case operator do
      "+" -> num1 + num2
      "-" -> num1 - num2
      "*" -> num1 * num2
      "/" ->
        if num2 == 0 do
          IO.puts("Error: Division by zero is not allowed.")
          nil
        else
          num1 / num2
        end
      _ -> IO.puts("Invalid operator.")
    end
  end

  def main do
    num1 = parse_number(get_input("Enter first number: "))
    operator = get_operator
    num2 = parse_number(get_input("Enter second number: "))

    if num1 != nil and num2 != nil do
      result = perform_operation(num1, operator, num2)
      if result != nil do
        IO.puts("Result: #{result}")
      end
    end
  end
end

Calculator.main
