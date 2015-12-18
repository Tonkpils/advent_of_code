input = File.open("day3input.txt")

X = 0
Y = 1
ORIGIN = [0,0]

houses_visited = Hash.new(0)
robot_location = ORIGIN.dup
santas_location = ORIGIN.dup
houses_visited[ORIGIN.dup] = 2

input.each_char.each_with_index do |c, idx|
  current_location = idx.even? ? santas_location : robot_location

  case c
  when '^' then current_location[Y] += 1
  when '>' then current_location[X] += 1
  when 'v' then current_location[Y] -= 1
  when '<' then current_location[X] -= 1
  end

  houses_visited[current_location.dup] += 1
end

puts "Santa visited #{houses_visited.keys.count} houses"
