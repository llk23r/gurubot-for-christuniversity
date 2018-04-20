require 'pry'
require 'date'
def read_details
  $conducted=nil
  $attended=nil
  $attendance=nil
  $absent=nil
  $target=nil
  $required=nil
  $leaves=nil
  begin
    puts "Number of classes conducted"
    $conducted=gets.chomp.to_f
    puts "Number of classes attended"
    $attended=gets.chomp.to_f
    if ( $attended > $conducted )
      read_details
    end
  end while ( $conducted < 0 && $attended < 0 )
end

def calculate_attendance
  $attendance = (100 * ($attendance / $conducted))
  puts "\n\n=>Current attendance = #{$attendance.round(2)}%"
end

def absence_details
  $absent = $conducted - $attended
  puts "\n\n=>You missed #{$absent.round(0)} classes"
end

def calculate_leave
  puts "\n\nEnter Number of Extra-curricular and Co-curricular leaves"
  $leaves = gets.chomp.to_i
end

def calculate_attendance_with_leave
  $attended+=$leaves
  puts "\n\nNet absence"
  absence_details
  puts "\n\nAttendance with leave"
  calculate_attendance
end

def classes_required
  puts "\n\nTarget percentage?"
  $target = gets.chomp.to_f
  $required = ((($target/100)*$conducted)-$attended)/(1-($target/100))
  if ($required < 0)
    $required*=-1
    puts "\n\n=>You can bunk #{$required.round(0)} classes to maintain #{$target}%.\n"
  else
    puts "\n\n=>You need to attend #{$required.round(0)} classes to get #{$target}%.\n"
  end
end

def time_estimation
  weeks = ($required.to_f)/34
 day = weeks * 5.667 
 month = day/30
  rem = (day%30)+1
  hours = (($required.to_f)%6)+1
  d = Date.today
  begin
    puts "What hour is this?"
    current_hour = gets.chomp
  end while ( current_hour > 6 && current_hour < 0 )
  # end
  net_remaining_hours = $required - remaining_hours
  estimatedDate = d + day.to_i
  estimatedDay = estimatedDate.strftime("%A")
  # binding.pry
  if ( estimatedDay == 'Saturday' && hours > 4 )
    estimatedDate+=2
    hours-=4
    # puts hours
  elsif ( estimatedDay == 'Sunday' )
    estimatedDate+=1
    estimatedDay = estimatedDate.strftime("%A")
  end
  if ( hours > 6 )
    estimatedDate+=1
    hours-=6
  end
  print "\n\n That's roughly equivalent to #{weeks.round(2)} weeks or #{day.round(0)} days "
  if ( month > 1 )
    puts "or #{month.round(0)} month(s) and #{rem.round(0)} days."
  end
  puts "\n\nEstimated date from today is :\n #{estimatedDay} #{estimatedDate} on the #{hours.round(0)} hour\n\n"
end

def main
  read_details
  calculate_attendance
  absence_details
  puts "\n\n\t\tCalcualte with pending leave attendance?(Y|N)"
  pending = gets.chomp
  if ( pending=='Y' || pending=='y' )
    calculate_leave
    calculate_attendance_with_leave
  end
  classes_required
  time_estimation
end
def check_day(d)
  if ( d.strftime("%A") == 'Saturday' )
    remaining_hours = 4 - current_hour
  else remaining_hours = 6 - current_hour
  end
end
main
