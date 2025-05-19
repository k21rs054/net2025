a=[10,20,50,30]

# aの要素を全て表示
a.each do |i|
  puts i
end

# i=0
# while i<a.length do
#   puts a[i]
#   i+=1
# end

# for i in a
#   puts i
# end

# aの最初の要素が偶数だったらaから取り除く
# aの全ての要素を表示
if a[1] % 2 == 0
  a.shift()
end
a.each do |i|
  puts i
end

# a.shift() if a[1] % 2 == 0
# a.each do |i| puts i end
