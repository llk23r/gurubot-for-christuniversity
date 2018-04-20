def absence_details
  $session = File.read('temp_session.txt').chomp
  puts "Session Loaded successfully.."
  url = "https://kp.christuniversity.in/KnowledgePro/studentWiseAttendanceSummary.do?method=getStudentAbscentWithCocularLeave".chomp
  curl = "curl -s --Cookie \"#{$session}\" #{url} > absencenew.html"
  puts "Requesting Document : \n\n "
  puts `#{curl}`
  puts "------------------------------------------"
  puts "absencenew.html created"
end
absence_details
