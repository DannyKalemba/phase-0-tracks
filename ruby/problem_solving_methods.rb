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


def fib(number)
  index = 0
  arr= [0,1]
  until index >= number-2
    arr << arr[index] + arr[index+1]
    index += 1
  end
  return arr
end

p fib(6)
p fib(100)[-1] == 218922995834555169026

def method_name
  
end