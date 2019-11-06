# frozen_string_literal: true

print "Введите количество цифр в билете (от 2 до 10). Число должно быть чётным.\n"
a = gets.to_i

while a.odd? || (a <= 0)
  print "Вы ввели не верное число, пожалуйста повторите попытку.\n"
  print'Число: '
  a = gets.to_i
end

n = a / 2

a = Array.new(n * 9 + 1, 0)

('0' * n .. '9' * n).each do |s|
  sum = 0
  s.each_byte { |c| sum += c - 48 }
  a[sum] += 1
end

count = a.inject { |x, sum| x + sum**2 }

puts "Количество счастливых билетов: #{count}"

