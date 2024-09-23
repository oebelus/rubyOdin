def bubble_sort(arr)
    i, j = 0, 0
    length = arr.length

    while i < length
        while j < length - i - 1
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
            j += 1
        end
        i += 1
        j = 0
    end
    arr
end

puts bubble_sort([2,0,2,1,1,0])