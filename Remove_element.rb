# Remove_element.rb

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}


def remove_element(nums, val)
  cont = 0
  cont2 = 0
  for elemento in nums
    
    if elemento == val
      nums[cont] = " "
      cont2 = cont2 + 1
    end
  cont = cont + 1
  end

  
  return nums.size - cont2
end
nums  = [0,1,2,2,3,0,4,2] 
#nums.sort!
val = 2

n = remove_element(nums, val)

puts "#{n}, nums = #{nums}"