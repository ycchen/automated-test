And(/^I test palindrome word "([^"]*)"$/) do |word|

  def palindrome(word)
    if word.reverse == word then
      p "#{word} is a palindrome"
    else
      p "#{word} is not a palindrome"
    end
  end
end


And(/^validate triangle,equ,iso,sol for values ([^"]*), ([^"]*) and ([^"]*)$/) do |x, y, z|
  def triangleValidator(x, y, z)
    a = x.to_i
    b = y.to_i
    c = z.to_i
    if a <= 0 || b <= 0 || c <= 0 then
      puts "Triangle Error"
    elsif a >= b+c || c >= b+a || b >= a+c then
      puts "Triangle Error"
    elsif a == b && b==c then
      p "Given co-ordinates are #{x+ "," +y+ "," +z}. It is Equilateral Triangle"
    elsif a == b || b==c || c==a then
      p "Given co-ordinates are #{x+ "," +y+ "," +z}. It is Isosceles Triangle"
    else
      p "Given co-ordinates are #{x+ "," +y+ "," +z}. It is Scalene Triangle"
    end
  end
end


And(/^I validate license plate as "([^"]*)"$/) do |license_plate|
  def licensePlateValidator(license_plate)
    if license_plate!= nil && license_plate.length == 8 && (/[A-Z][A-Z][A-Z]-\d{4}/ =~ (license_plate)) then
      p "#{license_plate} matches"
    else
      puts "#{license_plate} doesn't match"
    end
  end
end

And(/^I enter value "([^"]*)"$/) do |num|
  (1..100).to_a.each do |num|
    if num % 3 == 0 then
      p 'Fizz'
    elsif num%5 == 0 then
      p 'Buzz'
    elsif num % 3 == 0 && num % 5 ==0 then
      puts 'FizzBuzz'
    else
      p "#{num}"
    end
  end
end