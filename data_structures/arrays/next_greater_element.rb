# You are given two integer arrays nums1 and nums2 both of unique elements, where nums1 is a subset of nums2.
#
# Find all the next greater numbers for nums1's elements in the corresponding places of nums2.
#
# The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, return -1 for this number.

# Example 1:
#
# Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
# Output: [-1,3,-1]
#
# Explanation:
# For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
# For number 1 in the first array, the next greater number for it in the second array is 3.
# For number 2 in the first array, there is no next greater number for it in the second array, so output -1.
#
# Example 2:
#
# Input: nums1 = [2,4], nums2 = [1,2,3,4]
# Output: [3,-1]
# 
# Explanation:
# For number 2 in the first array, the next greater number for it in the second array is 3.
# For number 4 in the first array, there is no next greater number for it in the second array, so output -1.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  nums1.each_with_index do |value, pointer1|
    max = 0
    pos_nums2 = nums2.find_index(value)

    nums2[pos_nums2..nums2.count].each do |value|
      if value > nums1[pointer1]
        max = value
        break
      end
    end

    nums1[pointer1] = (nums1[pointer1] < max ? max : -1)
  end

  nums1
end

nums1 = [4, 1, 2]
nums2 = [1, 3, 4, 2]
print next_greater_element(nums1, nums2)
# Output: [-1,3,-1]

nums1 = [2, 4]
nums2 = [1, 2, 3, 4]
print next_greater_element(nums1, nums2)
# Output: [3,-1]
