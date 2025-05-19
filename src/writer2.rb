# ファイルの書き込み
# File.open("sample2.txt", "w") do |f|
#   f.puts("Hello")
#   f.puts("書き込み")
#   f.puts("Ruby")
# end

# writeからappendに
File.open("sample2.txt", "a") do |f|
  f.puts("Hello")
  f.puts("書き込み")
  f.puts("Ruby")
end
