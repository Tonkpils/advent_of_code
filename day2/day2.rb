file = File.open("day2input.txt")
total_wrap_sq_feet = 0
file.each_line do |dimensions|
  l, w, h = dimensions.split("x").map(&:to_i)
  side_areas = [l * w, w * h, h * l]
  extra_wrap = side_areas.min
  surface_area = side_areas.reduce(0) { |acc, area| acc + 2 * area }

  total_wrap_sq_feet += surface_area + extra_wrap
end

puts total_wrap_sq_feet

