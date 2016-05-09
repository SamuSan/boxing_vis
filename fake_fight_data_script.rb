filename = "fake_fight_data.csv"

punches = ["1", "2", "3", "6", "-", "+", "9"]

event_times = Array.new(100) { (180.0 * rand).round(0) }.uniq.sort

blue_data = []
event_times.each do |time|
  blue_data << { :time => time, :punch => punches.sample }
end

# blue_data.sort_by! do |event|
#   event[:time]
# end

puts blue_data

CSV.open("path/to/file.csv", "wb") do |csv|

  
  csv << ["row", "of", "CSV", "data"]
  csv << ["another", "row"]
  # ...
end





file = File.open(filename, "w")
file.write(blue_data)
file.close
