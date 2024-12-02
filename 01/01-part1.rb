rows = File.readlines('input')

left = []
right = []

rows.each do |row|
	numbers = row.split(/\s+/).map(&:to_i)
	left.push numbers[0]
	right.push numbers[1]
end

left = left.sort
right = right.sort

sum = 0

0.upto(left.length-1) do |i|
	sum += (left[i] - right[i]).abs
end

puts sum
