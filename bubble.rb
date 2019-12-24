puts "Type the matrix you want to bubble sort (the matrix will be written without brackets and spaces between numbers like this e.g. 1 4 3 87 2): "
arr_1 = gets.chomp
arr_1 = arr_1.split("\s")

def bubble_sort(arr)

    for i in 0...arr.length()-1
        for j in 0...arr.length() -1 -i
            a = arr[j]
            b= arr[j+1]
            if a > b
                arr[j] = b
                arr[j+1] = a
            end
        end
    end
    return arr
end

puts bubble_sort(arr_1)
