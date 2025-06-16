#! /usr/local/bin/ruby

# ./client1.rb ホスト名 パス名
# ruby client1.rb ホスト名 パス名

# ヘッダー情報を表示しないように改良

require "socket"

# host,path = ARGV

url =  ARGV[0]
url = url[7..]

index = url.index("/")
host = url[0,index]
path = url[index..]

# 正規表現を使ったら
# url = ARGV[0]
# if url =~ %r{^https?://([^/]+)(/.*)}
#   host = $1
#   path = $2
# end

s = TCPSocket.open(host, "http")
s.print("GET #{path} HTTP/1.1\r\n") # 動くように
s.print("Host: #{host}\r\n")
s.print("\r\n")

# cmd = "GET #{ARGV[1]} HTTP/1.1\r\n"
# cmd += "Host: #{ARGV[0]}\r\n"
# cmd += "\r\n"

# while line = s.gets&.chomp
#   break if line.empty?
#   # if line == "\r\n"
#   #   break
#   # end
#   # puts line
# end

while line = s.gets&.chomp
  puts line
end
