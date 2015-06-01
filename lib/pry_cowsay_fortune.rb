require "pry"

module PryCowsayFortune
  Pry.config.hooks.add_hook(:before_session, :cowsay_fortune) do |out, target, pry|
    out.puts(`cowsay $(fortune)`.strip)
  end
end
