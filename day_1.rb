DATA = File.readlines("inputs/day_1.txt")

first, second = [], []

DATA.map(&:split).map do |a, b|
  first << a.to_i
  second << b.to_i
end

# part 1
first.sort.zip(second.sort).map { |a, b| (a - b).abs }.sum

# part 2
lookup = second.group_by(&:itself).transform_values(&:size)
first.map { |x| x * lookup[x].to_i }.sum
