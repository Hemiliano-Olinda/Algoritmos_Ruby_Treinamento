# Remove_element.rb

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}


def remove_element(nums, val)
  cont = 0
  cont2 = 0
  for elemento in nums
    
    if elemento == val
      nums[cont] = nil
      cont2 = cont2 + 1
    end
  cont = cont + 1
  end
  
  k = nums.size - cont2
  nums.compact!
  return "#{k}, nums = #{nums}"

end
nums  = [3,2,2,3] 
#nums.sort!
val = 3

n = remove_element(nums, val)

puts "#{n}"