def bubble_sort(arr)
  0.upto(arr.length - 1) do |i| 
    swapped = false

    1.upto(arr.length - 1 - i) do |j|
      if arr[j - 1] > arr[j]
        temp = arr[j]
        arr[j] = arr[j - 1]
        arr[j - 1] = temp
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

p bubble_sort([0, 2, 2, 3, 4, 78])
