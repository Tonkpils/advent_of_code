require "digest"

PASSWORD = ENV["AOC_DAY4_PASS"]
ADVENT_HASH = "00000".freeze
IS_ADVENT_HASH = ->(hex) { hex.start_with?(ADVENT_HASH) }
num = 0


loop do
  message = "#{PASSWORD}#{num}"
  hex = Digest::MD5.hexdigest(message)
  break if IS_ADVENT_HASH.(hex)

  num += 1
end

puts "Lowest number for advent coint #{num}"
