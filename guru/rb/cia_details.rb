def cia_details
$session = File.read('temp_session.txt').chomp
url = "https://kp.christuniversity.in/KnowledgePro/studentWiseAttendanceSummary.do?method=getInternalMarkDetails".chomp
curl = "curl -s --cookie \"#{$session}\" #{url} > cianew.html"
puts "Requesting Document : \n\n "
puts `#{curl}`
puts "------------------------------------------"
puts "cianew.html created"
end
cia_details