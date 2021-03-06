# frozen_string_literal: true

puts 'Type the matrix you want to bubble sort (the matrix will be written'
puts 'without brackets and spaces between numbers like this e.g. 1 4 3 87 2): '

arr1 = gets.chomp
arr1 = arr1.split(' ').map(&:to_i)

puts 'type the direction of the array after being sorted (left|right)'
puts 'if left blank it defaults to right'
user_direction = gets.chomp

def bubble_sort(arr)
  (0...arr.length - 1).each do |i|
    (0...arr.length - 1 - i).each do |j|
      a = arr[j]
      b = arr[j + 1]
      if a > b
        arr[j] = b
        arr[j + 1] = a
      end
    end
  end
  arr.to_s
end

def bubble_sort_by(arr, direction = 'left')
  (0...arr.length - 1).each do |i|
    (0...arr.length - 1 - i).each do |j|
      a = arr[j]
      b = arr[j + 1]
      if a > b
        arr[j] = b
        arr[j + 1] = a
      end
    end
  end
  yield(direction, arr)
  arr.to_s
end

puts bubble_sort_by(arr1, user_direction) { |dire, arr| arr.reverse! if dire == 'left' }
