# # 前回の復習
# puts "Hello"

# # "to_i"で数値に変換
# a=gets.to_i
# s=gets

# puts a+2
# puts s

# # Pretty Print
# pp a
# pp s

# # 行末の改行を削除
# t=gets.chomp
# s=gets.chomp

# puts t+s
# pp t+s

print "a? "
a=gets.to_i
# puts a*2

if a >= 0
  puts "Positive"
else 
  puts "Negative"
end

if a > 0
  puts "Positive"
else 
  if a == 0
    puts "Zero"
  else
    puts "Negative"
  end
end

if a > 0
  puts "Positive"
elsif a == 0
  puts "Zero"
else
  puts "Negative"
end

print "name? "
name=gets.chomp
if name == "KSU"
  puts "Hello"
else
  puts "Hi"
end

# Ruby では false または nil だけが偽で、それ以外は 0 や空文字列も含め全て真
q=5
# 普通に動く
if q==3
  puts "three"
end
# # 正しく動かない（表示されるけど）
# if q=3
#   puts "three"
# end

# if修飾子
puts "three" if q==3
puts "not three" if q!=3
puts "not three" unless q==3

# case文
# JavaのSwitch文


z = if q==3
  puts "three"
end
pp z

