
### two sum ii
* two pointer方法适用于有序sorted的list， 使用之前需要先排序
* double for loop方法比较稳定，实现简单，就是复杂度高
* hash 方法
1. 对于 two sum iii 这种只要求有没有true和false，而不是返回index的情况，实现非常简单
2. 对于需要返回index结果的情况，关键是要建立hash[nodeval] = nodeindex 的映射，因为最后是返回index的


```python
class Solution:
    """
    @param nums: an array of Integer
    @param target: target = nums[index1] + nums[index2]
    @return: [index1 + 1, index2 + 1] (index1 < index2)
    """

    
    # reverse index,   otehrindex first,         
    def twoSum_hash(self, nums, target):
        hash = {}
        for cur_idx, cur_num in enumerate(nums):
            other = target - cur_num
            if other in hash:
                return [hash[other]+1, cur_idx+1]
            hash[cur_num] = cur_idx 
            
        return []
        
    
    
    def twoSum_twopointers(self, nums, target):
        left = 0
        right =len(nums)-1
        
        while (left<right):
            sum_ = nums[left] + nums[right]
            if sum_ > target:
                right -= 1
            elif sum_ < target:
                left += 1
            else:
                return [left+1, right+1]
                

    def twoSum_doubleforloop(self, nums, target):
        
        length = len(nums) 
        for cur_idx in range(length-1):
            for other_idx in range(cur_idx+1, length):
                if nums[cur_idx] + nums[other_idx] == target:
                    return [cur_idx+1, other_idx+1]
                    
        return []
```
