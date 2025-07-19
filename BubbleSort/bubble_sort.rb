def bubble_sort(arr)
  loop do
    swap = false
    arr.each_with_index do |el, i|
      next if arr[i + 1].nil?

      if el > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], el
        swap = true
      end
    end
    break unless swap
  end
  arr
end
