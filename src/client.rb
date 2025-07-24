#! /usr/local/bin/ruby

require "socket"

print "ユーザ名: "
username = gets.chomp

puts "終了するときは \"exit\" と入力してください"

sock = TCPSocket.open("localhost", 80)
sock.puts username  # ユーザ名の送信

# ユーザ名の重複確認
response = sock.gets&.chomp
if response && response.start_with?("ERROR:")
  puts response
  sock.close
  exit
end

# メッセージ受信
Thread.new do
  loop do
    message = sock.gets
    if message == nil
      break 
    end
    puts "\n#{message.chomp}"
    print "> "
  end
end

# メッセージ送信
loop do
  print "> "
  input = gets.chomp
  # "exit"と入力したら接続を切る
  if input == "exit"
    break
  end
  sock.puts input
end

sock.close
puts "接続を終了しました"
