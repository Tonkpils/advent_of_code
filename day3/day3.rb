input = File.open("day3input.txt")

X = 0
Y = 1

houses_visited = Hash.new(0)
current_location = [0,0]
houses_visited[current_location.dup] = 1

input.each_char do |c|
  case c
  when '^' then current_location[Y] += 1
  when '>' then current_location[X] += 1
  when 'v' then current_location[Y] -= 1
  when '<' then current_location[X] -= 1
  end

  houses_visited[current_location.dup] += 1
end

puts "Santa visited #{houses_visited.keys.count} houses"
