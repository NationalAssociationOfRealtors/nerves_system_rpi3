defmodule NervesSystemRpi3.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
           |> File.read!
           |> String.strip

  def project do
    [app: :nerves_system_rpi3,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_package],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves, path: "../nerves"},
     {:nerves_system_br, path: "../nerves_system_br"},
     {:nerves_toolchain_arm_unknown_linux_gnueabihf, "~> 0.6.0"}]
  end

  defp description do
   """
   Nerves System - Raspberry Pi 3 B
   """
  end

  defp package do
   [maintainers: ["Frank Hunleth", "Justin Schneck"],
    files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION", "rootfs-additions"],
    licenses: ["Apache 2.0"],
    links: %{"Github" => "https://github.com/nerves-project/nerves_system_rpi3"}]
  end
end
