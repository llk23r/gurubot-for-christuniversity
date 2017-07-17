def academic_details 
$session = File.read('temp_session.txt').chomp
url = "https://kp.christuniversity.in/KnowledgePro/StudentLoginAction.do?method=getAccademicProgresChart".chomp
curl = "curl -s --cookie \"#{$session}\" #{url} > academic.html"
puts " Reqesting document : \n "
puts `#{curl}`
puts "------------------------------------------"
puts "academic.html created"
end
academic_details
