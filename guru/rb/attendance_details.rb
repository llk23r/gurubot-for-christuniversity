def attendance_details
  $session = File.read('temp_session.txt').chomp
  url = "https://kp.christuniversity.in/KnowledgePro/studentWiseAttendanceSummary.do?method=printPresentAttendance1".chomp
  curl = "curl -s --cookie \"#{$session}\" #{url} > attendancenew.html"
  puts "Requesting Document : \n "
  puts `#{curl}`
  puts "------------------------------------------"
  puts "attendancenew.html created"
end

attendance_details
