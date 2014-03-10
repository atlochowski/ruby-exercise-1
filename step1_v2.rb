input = ""
array = []

until input == 4
  puts "What do you want to do?"
  puts "1. Add Album"
  puts "2. Remove Album"
  puts "3. Show Albums"
  puts "4. Quit"
  
  input = gets.chomp.to_i
  if input > 4
    puts "Numer should be 1-4"
  end
  case input
  when 1
    album = gets.chomp
    if array.include?(album)
      puts "Album already exists"
    else
      array << album
      puts "Album added"
    end
   when 2
     album = gets.chomp
     puts array.include?(album) ? array.delete(album) : "Album doesn't exist"
     
   when 3
     puts array
   end
end
