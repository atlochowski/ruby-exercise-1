input=""
array = []

while input != 4
  


  puts "What do you want to do?"
  puts "1. Add Album"
  puts "2. Remove Album" 
  puts "3. Show Albums" 
  puts "4. Quit" 

input = gets.chomp.to_i

if input == 1
  album = gets.chomp
  if array.include?(album)
    puts "Album already exists"
  else
    array << album
    puts "Album added"
  end
  
elsif input == 2
  album = gets.chomp
  if array.include?(album)
    array.delete(album)
  else
    puts "Album doesn't exist"
  end
  
elsif input == 3
  puts array
  
elsif input == 4
end
end
