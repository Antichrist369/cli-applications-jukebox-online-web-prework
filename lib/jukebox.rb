#def say_hello(name)
  #"Hi #{name}!"
#end 

#puts "Enter your name:" 
#user_name = gets.strip 

#puts say_hello(user_name)
require 'pry'
def help 
 puts "-I accept the following commands:"
 puts "- help : displays this help message" 
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play" 
 puts "- exit : exits this program"
end 

def play(songs)
     puts "Please enter a song name or number:"
      user_request = gets.strip
   if user_request.to_i >= 1 && user_request.to_i <= songs.length 
     puts "Playing #{songs[user_request.to_i - 1] }"
   elsif songs.include?(user_request)
     puts "playing #{songs.find { |song| song == user_request }}"

   else 
     puts "Invalid input, please try again"
   end 
end 

def list(songs) 
  #songs.each_with_index { |x, index| songs[x,to_i + 1] = index }
  songs.each_with_index do |song, i| 
  puts "#{i+1}, #{song}"
 end
end 

def exit_jukebox 
  puts "Goodbye."
end 