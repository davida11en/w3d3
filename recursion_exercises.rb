def range(min, max)
    return [] if max <= min 
     range(min, max - 1) + [max-1]
    #[min] + range(min, max-1)
end

# p range(4, 8)

def iterative_sum(arr)
    sum = 0
    arr.each do |int|
        sum += int
    end
    sum
end

def recursive_sum(arr)
    return 0 if arr.length == 0
    return arr.first if arr.length == 1
    sum = arr.shift
    sum + recursive_sum(arr)
end

# p recursive_sum([1,2,3,4])

def exp(b,n)
    return 1 if n == 0
    b * exp(b, n- 1) 
end

def exp2(b,n)
    return 1 if n == 0
    return b if n == 1
    return exp2(b, n / 2) ** 2 if n.even?
    return b * (exp2(b, (n - 1) / 2) ** 2) if n.odd? 
end

# p exp(2,2)

# recursion 2
# p exp2(b, 0) # 1
# p exp2(b, 1) # b
# p exp2(3, 2) # exp2(b, n / 2) ** 2             [for even n]
# p exp2(2, 3) # b * (exp2(b, (n - 1) / 2) ** 2) [for odd n]

def deep_dup(arr)
    return arr if !arr.is_a?(Array)
    res = []
    arr.each do |subs|
        res << deep_dup(subs)
    end
    res
end

# class Array
#     def deep_dup
#         return self if !arr.is_a?(Array)
#         res = []
#         arr.each do |subs|
#             res << deep_dup(subs)
#         end
#         res
#     end

robot_parts = [
  ["nuts", ["bolts"], "washers"],
  ["capacitors", "resistors", [["inductors"]]]
]

# copy = deep_dup(robot_parts)
# p copy.object_id == robot_parts.object_id
# p copy.object_id
# p robot_parts.object_id
# robot_parts[0]<< "poo"
# p copy
# p robot_parts

def fib_it(n)
    return [] if n == 0
    return [1] if n == 1
    return [1] if n == 2
    res = [1,1]
    until res.count == n
        res << res[-1] + res[-2]
    end
    res
end

def fib(n)
    return [] if n == 0
    return [1] if n == 1
    return [1, 1] if n == 2
    res = fib(n-1)
    res << res[-1] + res[-2]
    res
end
# p fib(9)
def bsearch(arr, n)
    # debugger
    return nil if arr.empty?
    return arr.count/2 if arr[arr.count/2] == n
    pivot = [arr[arr.count/2]]
    left = arr.select {|el| el < pivot[0]}
    right = arr.select {|el| el > pivot[0]}
    return bsearch(left,n) if bsearch(left,n)
    return (arr.count/2) + 1 + bsearch(right,n) if bsearch(right,n)
end

# p bsearch([1, 2, 3], 1) # => 0              # L
# p bsearch([2, 3, 4, 5], 3) # => 1           # L
# p bsearch([2, 4, 6, 8, 10], 6) # => 2       # M
# p bsearch([1, 3, 4, 5, 9], 5) # => 3        # R
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5     # R
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil   # n
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil   # n

require "byebug"
def merge_sort(arr)
    return arr if arr.length <= 1
    midpoint = arr.length / 2
    midpoint -= 1 if arr.length.even?
    left = arr[0..midpoint]
    right = arr[(midpoint+1)..-1]
    if arr.count == 2 && arr[0]>arr[1]
        return[arr[1],arr[0]]
    end
    # p left
    # p right
    # merge_sort(left) + merge_sort(right)
    # debugger

    # left = merge_sort(arr[0..midpoint])
    # right = merge_sort(arr[(midpoint+1)..-1])
    # p merge_sort(together)
    # merged = left[0] > right[0] ? right + left : left + right
    # merge_sort(merged)
end

p merge_sort([38,27,43,3,9,82,10])
# arr = [38,27,45,4,9,82,10]
# p arr

# midpoint = arr.length / 2
# midpoint -= 1 if arr.length.even?
# arr = arr[0..midpoint]
# p arr

# midpoint = arr.length / 2
# midpoint -= 1 if arr.length.even?
# arr = arr[0..midpoint]
# p arr

# midpoint = arr.length / 2
# midpoint -= 1 if arr.length.even?
# arr = arr[0..midpoint]
# p arr

# midpoint = arr.length / 2
# midpoint -= 1 if arr.length.even?
# arr = arr[0..midpoint]
# p arr

# midpoint = arr.length / 2
# midpoint -= 1 if arr.length.even?
# arr = arr[0..midpoint]
# p arr
