require 'csv'
require 'pry'

file = CSV.open "./2013_college_scorecards.csv", headers: true, header_converters: :symbol
argument = ARGV[1]
opt_arg = ARGV[2] if ARGV[2]

if ARGV.first == "by_state"
  results =
  file.select do |row|
    row[:stabbr] == argument
  end.map{|row| row[:instnm]}

elsif ARGV.first == "top_average_faculty_salary"

elsif ARGV.first == "median_debt_between"

end
puts results
