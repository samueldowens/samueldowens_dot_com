# Write a program that tells you the following:
#
# Hours in a year. How many hours are in a year?
# Minutes in a decade. How many minutes are in a decade?
# Your age in seconds. How many seconds old are you?
#
# Define at least the following methods to accomplish these tasks:
#
# seconds_in_minutes(1)
# minutes_in_hours(1)
# hours_in_days(1)
# days_in_weeks(1)
# weeks_in_years(1)
#
# If I am 1,111 million seconds old, how old am I?
# Define an age_from_seconds method

def seconds_in_minutes(min)
  sec = min * 60
end

def minutes_in_hours(hours)
  minutes = hours * 60
end

def hours_in_days(days)
  hours = days * 24
end

def days_in_weeks(weeks)
  days = weeks * 7
end

def weeks_in_years(years)
  weeks = years*52
end

puts "There are #{hours_in_days(days_in_weeks(weeks_in_years(1)))} hours in a year"
puts "There are #{minutes_in_hours(hours_in_days(days_in_weeks(weeks_in_years(10))))} minutes in a decade."
puts "I am 27 years old, or #{seconds_in_minutes(minutes_in_hours(hours_in_days(days_in_weeks(weeks_in_years(27)))))} seconds old."