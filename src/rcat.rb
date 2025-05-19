# reader.rb の各行を1行ずつ画面に表示
File.open("reader.rb", "r") do |f|
  while line = f.gets&.chomp
    puts line
  end
end
