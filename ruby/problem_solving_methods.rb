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

#-Pass in an array to a method
#-Take the values at the first and second index of the array and compare them
# => If the preceding value is greater than the next value, swap the positions of the values, and add 1 to swap counter
# => Otherwise don't swap them
#-Move to second and third values of the array and compare them
#-If swap counter is equal to zero on this pass, stop

def sort_array(arr)
  swap_counter = true
  until swap_counter == false
    index = 0
    swap_number = 0
    while arr[index + 1] != nil
      if arr[index] > arr[index + 1]
        first_number = arr[index]
        second_number = arr[index + 1]
        arr[index + 1] = first_number
        arr[index] = second_number
        swap_counter = true
        swap_number += 1
      end
      index += 1
    end
    if swap_number == 0
        swap_counter = false  
    end
  end
    return arr
end

arr = [5, 1, 4, 2 , 4, 8, 3, 7, 4, 9]

p sort_array(arr)