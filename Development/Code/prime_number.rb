def prime?(number)
  tries = 0

 prime = !(2...(number**0.5)).any? do |i|
  tries += 1
  number % i == 0
  end
end

