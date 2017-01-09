# Origin du Time

sec_in_year =60*60*24*31*12
right_now = Time.now
result = right_now.to_i/sec_in_year
puts "afficher #{result}" 