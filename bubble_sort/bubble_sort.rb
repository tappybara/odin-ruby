def bubble_sort(arr)
    for i in 0..arr.length
        swapped = false

        for j in 0...arr.length - i - 1
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = true
            end
        end

        break if !swapped
    end

    arr
end

list = [4, 3, 78, 2, 0, 2]
p bubble_sort(list)