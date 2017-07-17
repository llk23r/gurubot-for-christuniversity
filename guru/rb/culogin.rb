def culogin_details
url = "http://192.168.100.100:8090/login.xml".chomp
userName = gets.chomp
pass = gets.chomp.to_i
curl = "curl -d \"mode=191&username=userName&password=pass&producttype=0\" #{url}" 
puts "Requesting Document :"
puts `#{curl}`
puts "------------------------------------------"
end
culogin_details
