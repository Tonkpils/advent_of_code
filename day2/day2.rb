file = File.open("day2input.txt")
total_wrap_sq_feet = 0
total_ribbon_length = 0
file.each_line do |dimensions|
  l, w, h = dimensions.split("x").map(&:to_i)

  # Total gift wrap
  side_areas = [l * w, w * h, h * l]
  extra_wrap = side_areas.min
  surface_area = side_areas.reduce(0) { |acc, area| acc + 2 * area }

  total_wrap_sq_feet += surface_area + extra_wrap

  # Total ribbon
  ribbon_wrap_length = [l, w, h].sort[0..1].reduce(0) { |acc, side| acc + 2 * side }
  ribbon_bow_length = l * w * h

  total_ribbon_length += ribbon_bow_length + ribbon_wrap_length
end

puts "Total gift wrap required #{total_wrap_sq_feet} square feet"
puts "Total ribbon required #{total_ribbon_length} feet"
