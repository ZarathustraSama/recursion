def fibs(n)
  if n == 1
    return nums = [0]
  elsif n > 1
    nums = [0, 1]
  end
  nums << nums[-1] + nums[-2] until nums.length == n
  nums
end

def fibs_rec(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  end
  nums = fibs_rec(n - 1)
  nums << nums[-1] + nums[-2]
end

p fibs(8)
p fibs_rec(8)
