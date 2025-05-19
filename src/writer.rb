# ファイルの書き込み
file = File.open("sample.txt", "w")

file.print "Print"
file.puts("Hello") # かっこなしでもOK(改行あり)
file.write("書き込み") # かっこなしでもOK(改行なし)
file.puts "Ruby"
file.puts "あああああ"
STDOUT.puts "Ruby" # 'puts "Ruby"'と一緒

file.close
