require 'pry'
def initiate_session
 $session = nil	
 puts "New session? [Y]/[N]"
 flag = gets.chomp
 # binding.pry
if (flag == "Y" || flag == "y")
 reset_session
 load
 else load  
end
end

def reset_session
 puts "Paste your SESSIONID here :"
 $session = gets.chomp
 open('temp_session.txt', 'w'){ |f|
  f.puts "#{$session}"
  }
end

def load
puts "\n\n\n\n"
puts "------------------------------------------"
puts "Processing the request..."
sleep 0.25
puts "completed [======              ] 25% "
sleep 0.5
puts "completed [==========          ] 50% "
sleep 0.25
puts "completed [==============      ] 75% "
sleep 0.05
puts "completed [====================] 100% "	
puts "------------------------------------------"
puts "\n\n\n\n"
sleep 0.25
end 

initiate_session