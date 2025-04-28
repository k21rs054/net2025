# https://docs.ruby-lang.org/ja/latest/doc/spec=2fcontrol.html
# 繰り返し
# Rubyではwhile文をメインで使用

a=5
while a>0
  puts a
  a=a-1 # "a--" はない,"a-=1"はある
end

ia=[10,30,50,80]
for i in ia
  puts i
end
# 上と同じ挙動
ia.each do |i|
  puts i
end

# 固定回数繰り返し
15.times do |i|
  print "*"
end
puts
# こっちでも動く
15.times do
  print "*"
end
puts