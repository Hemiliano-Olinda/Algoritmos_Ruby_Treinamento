# Two_sum.rb
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  @nums = nums
  @cont = 0
  @nums.each_with_index do |n1 , i1|
        @nums.each_with_index do |n2 , i2| 
          if i1 != i2 && n1 + n2 == target && @cont == 0
            @resposta = [i1 ,i2]
            @cont += 1
            
          end
        end

    end
  return @resposta
  end

 nums = [3,2,4]
 atarget = 6
 n = two_sum(nums,atarget)
 print "#{n}"




