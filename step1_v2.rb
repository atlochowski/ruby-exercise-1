input = ""
array = []

until input == 4
  puts "What do you want to do?"
  puts "1. Add Album"
  puts "2. Remove Album"
  puts "3. Show Albums"
  puts "4. Quit"
  
  input = gets.chomp.to_i
  if input > 4 || input < 1 
    puts "Number should be 1-4"
  else
  case input
  when 1
    puts "Enter album:"
    album = gets.chomp
    if array.include?(album)
      puts "Album already exists"
    else
      array << album
      puts "Album added"
    end
   when 2
     puts "Enter album to delete:"
     album = gets.chomp
     if array.delete(album) then puts "Album deleted" else puts "Album doesn't exist" end
     
   when 3
     puts array
   end
   end
end
