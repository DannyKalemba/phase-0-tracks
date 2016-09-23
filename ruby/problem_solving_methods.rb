def search_array(arr, number)
  index = 0
  arr.each do |postion|
    if postion == number
      puts index
      break
    end
    index += 1
  end
  if index == arr.length 
    p arr[index]
  end
end

search_array([1,2,3,4,6,7,835,45], 85)