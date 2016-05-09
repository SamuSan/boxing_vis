require 'csv'

filename = "fake_fight_data.csv"

punches = ["1", "2", "3", "6", "-", "+", "9"]


blue_data = []
red_data =  []

Array.new(100) { (180.0 * rand).round(0) }.uniq.each do |time|
  blue_data <<  ["b", time, punches.sample]
end

Array.new(100) { (180.0 * rand).round(0) }.uniq.each do |time|
  red_data <<  ["r", time, punches.sample]
end
red_data.sort!
blue_data.sort!
puts blue_data
puts red_data

CSV.open(filename, "wb") do |csv|
  csv << ["corner", "event_time", "strike"]

  blue_data.concat(red_data).each do |event|
    # require 'pry-byebug'; binding.pry
    csv << event
  end
end
