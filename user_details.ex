defmodule User do
  defstruct name: "", age: 0, email: ""
end

defmodule UserInput do
  def get_user_data do
    IO.puts("Enter your name:")
    name = IO.gets(" ") |> String.trim()

    IO.puts("Enter your age:")
    age = IO.gets(" ") |> String.trim() |> String.to_integer()

    IO.puts("Enter your email:")
    email = IO.gets(" ") |> String.trim()

    %User{name: name, age: age, email: email}
  end
end

user = UserInput.get_user_data()
IO.puts("Your name: #{inspect(user.name)}")
IO.puts("Your age: #{inspect(user.name)}")
IO.puts("Your name: #{inspect(user.name)}")
