def max x, y
  if x > y
    result = x
  else
    result = y
  end
  return result # "return"なしでも大丈夫
rescue 
end

# # 普通はこんな感じで書く
# def max x, y
#   if x > y
#     x
#   else
#     y
#   end
# rescue 
# end
 
##############################
 
# 整数を1つ受けとって、偶数なら"even"、奇数なら"odd"という文字列を返す"evenodd"というメソッドを宣言
def evenOdd x
  if x % 2 == 0
    "even"
  else
    "odd"
  end
end

# def evenOdd x
#   if x % 2 == 0
#     return "even"
#   end
#   "odd"
# end

# 以下のような書き方もできる
# def evenOdd x
#   if x % 2 == 0
#     "even"
#   else
#     100 # 数値
#   end
# end

# def evenOdd x
#   if x % 2 == 0
#     "even"
#   else
#     ["odd", 100] # 配列
#   end
# end
 
##############################

a=5
b=10
c=max(a,b)
puts c

puts evenOdd(5)
puts evenOdd(100)

