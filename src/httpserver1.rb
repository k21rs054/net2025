#!/usr/bin/ruby

# 1. TCPのポート80で接続を待ち受け
# # 2. 接続が来たら、"Hello, World!"と送信
# 2. whileの繰り返しで行を読み込む
# 2.1 読み込んだ行をソケットに送り返す

require "socket"

s0 = TCPServer.open(80)

loop do
  sock = s0.accept
  Thread.new do
    line = sock.gets&.chomp
    _cmd,path,_ver = line.split
    # a = line.split
    # path = a[1]
    case path
    when "/hello"
      sock.puts "HTTP/1.0 200 OK"
      sock.puts
      sock.puts "Hello, world!"
    when "/93"
      sock.puts "HTTP/1.0 301 Moved Permanently"
      sock.puts "Location: http://www.kyusan-u.ac.jp"
      sock.puts
    else
      # path = ".#{path}"
      if File.exist?("." + path)
        sock.puts "HTTP/1.0 200 OK"
        sock.puts "Content-Type: text/plane; charset=UTF-8"
        sock.puts
        File.open "." + path, "r" do |f|
          while fl = f.gets&.chomp
            sock.puts fl
          end
        end
      else
        sock.puts "HTTP/1.0 404 Not Found"
        sock.puts
      end
    end
    sock.close
  end
end

# break if line == "\r\n"
# sock.gets&.chomp をつかうなら
# break if line == ""
# break if line.empty?
# ただし改行はなくなる
# ので sock.puts line か sock.print line+"\r\n"

s0.close

# http://localhost/
