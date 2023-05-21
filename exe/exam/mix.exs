defmodule Exam.MixProject do
  use Mix.Project

  def project do
    [
      app: :exam,
      version: "0.1.0",
      escript: escript()
    ]
  end
 
  defp escript do
    [main_module: ExampleApp.CLI]
  end
end
