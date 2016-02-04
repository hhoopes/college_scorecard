require 'csv'
require 'pry'

class CollegeScorecard
  attr_reader :reader, :file, :argument

  def initialize
    @file = read_file
    @processed = process_file(ARGV.first)
    @argument = ARGV[1]
    @opt_arg = ARGV[2] if ARGV[2]
  end

  def read_file
    #CSV.open file, headers: true, header_converters: :symbol
    CSV.open "2013_college_scorecards.csv", headers: true, header_converters: :symbol
  end

  def process_file(method)
    if method == "by_state"
      file.select do |row|
        row[:STABBR] == argument
        row[:INSTNM]
      end
    elsif method == "top_average_faculty_salary"

    elsif method == "median_debt_between"
    end
  end

end

CollegeScorecard.new
