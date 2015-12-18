input = File.read("day1input.txt")
floor = 0

basement_entered_at = nil

input.each_char.each_with_index do |c, idx|
  case c
  when '(' then floor += 1
  when ')' then floor -= 1
  end
  if basement_entered_at.nil? && floor == -1
    basement_entered_at = idx + 1
  end
end

puts "Floor #{floor}"
puts "Basement entered at #{basement_entered_at}"
