# ファイルの読み込み
File.open("sample2.txt", "r") do |f|
  while line = f.gets&.chomp
    pp line
  end
end

# 行頭に行番号を表示
File.open("sample2.txt", "r") do |f|
  number = 1
  while line = f.gets&.chomp
    puts number.to_s + ":" + line
    number += 1
  end
end

# 下記の書き方もOK
File.open("sample2.txt", "r") do |f|
  number = 1
  while line = f.gets&.chomp
    puts "#{number}:#{line}"
    number += 1
  end
end

# 自分自身を読み込む
File.open("reader2.rb", "r") do |f|
  number = 1
  while line = f.gets&.chomp
    puts "#{number}:#{line}"
    number += 1
  end
end

# # パスを指定
# path=gets.chomp
# File.open(path, "r") do |f|
#   number = 1
#   while line = f.gets&.chomp
#     puts "#{number}:#{line}"
#     number += 1
#   end
# end

# パスを指定
path = ARGV[0]
File.open path, "r" do |f|
  number = 1
  while line = f.gets&.chomp
    puts "#{number}:#{line}"
    number += 1
  end
end
