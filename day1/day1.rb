input = File.read("day1input.txt")
floor = 0
input.each_char do |c|
  case c
  when '(' then floor += 1
  when ')' then floor -= 1
  end
end

puts "Floor #{floor}"
