require 'date'

def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i

  # Creating a Date object if that date is correct
  begin
    Date.new(year, month, day)
  rescue => e
    puts "#{e.class}: #{e.message}" #=> ArgumentError: invalid date
    nil
  end
end

p convert_heisei_to_date('平成28年12月31日') #=> #<Date: 2016-12-31
p convert_heisei_to_date('平成28年6月31日') #=> nil
