# ファイルの読み込み
file = File.open("sample.txt", "r")

# # 1行しか読み込めない
# line = file.gets
# puts line

while (line = file.gets) != nil
  # line = line.chomp # 行末の改行を削除
  line.chomp! # "line"を"line.chomp"に置き換える
  puts line
end

# # 以下ような書き方でもよい
# while line = file.gets
#   puts line
# end

# # "nil"はchompを持ってないからエラーが出る
# while line = file.gets.chomp
#   pp line
# end
# # ぼっちオペレータ（ぼっち演算子）をつかえばエラーは出ない
# while line = file.gets&.chomp
#   pp line
# end

file.close
