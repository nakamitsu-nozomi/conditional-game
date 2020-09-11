puts "様々な言語のHello World"
languages = ["Ruby","PHP","Java"]


languages.each do |language|
  if language=="Ruby"
    puts "#{language}:puts 'hello world'"
 
  elsif language=="PHP"
    puts "#{language}:echo 'hello world'"

  elsif language=="Java"
    puts "#{language}:System.out.println 'hello world'"

  end
end



