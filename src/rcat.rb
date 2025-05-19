# コマンドラインで指定した全てのファイルの各行を1行ずつ画面に表示
ARGV.each do |arg|
  File.open arg, "r" do |f|
    while line = f.gets&.chomp
      puts line
    end
  end
end
