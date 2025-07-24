#!/usr/bin/ruby

require "socket"

# []: 配列
# {}: ハッシュ
clients = [] # クライアント一覧
usernames = {} # ユーザ名の対応表
used_usernames = [] # 過去のユーザ名
server = TCPServer.open(80)

loop do
  sock = server.accept
  clients << sock

  Thread.new(sock) do |client|
    begin
      # 最初にユーザ名を受信（1行目）
      name_line = client.gets
      username = name_line.chomp

      # ユーザ名の重複確認
      # 重複 → 強制的に終了
      if used_usernames.include?(username)
        client.puts "エラー: そのユーザ名はすでに使われています"
        clients.delete(client)
        client.close
        next
      end

      # ユーザ名を登録
      usernames[client] = username
      used_usernames << username
      puts "#{username} が参加しました"

      # 他のクライアントに通知
      clients.each do |c|
        if c != client
          c.puts "通知: #{username} が参加しました"
        end
      end

      while message = client.gets
        message&.chomp
        puts "#{username}: #{message}"

        # 他のクライアントにメッセージを転送
        clients.each do |c|
          if c != client
            c.puts "#{username}: #{message}"
          end
        end
      end

    ensure # 最後に実行 (切断)
      clients.delete(client)
      name = usernames.delete(client)
      puts "#{name} が切断しました"

      # 他のクライアントに退出の通知
      clients.each do |c|
        c.puts "通知: #{name} が退出しました"
      end

      client.close
    end
  end
end
