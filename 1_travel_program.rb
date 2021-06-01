puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）
TEXT


while true
print "プランの番号を選択 > "
plan_num = gets.to_i
break if (1..3).include?(plan_num)
puts "1~3の番号を入力して下さい。"
end
case plan_num
  when 1
    location = "沖縄"
    price = 10000
  when 2
    location = "北海道"
    price = 20000
  when 3
    location = "九州"
    price = 15000
end

puts <<~TEXT
#{location}旅行ですね。
何名で予約されますか？
TEXT

while true
print "人数を入力 > "
booking_people_num = gets.to_i
break if booking_people_num >= 1
puts "1人以上を入力して下さい。"
end

puts "#{booking_people_num}名ですね。"

total_price = price * booking_people_num
if booking_people_num >= 5
  puts "5名以上ですので10%割引となります"
  total_price = total_price * 0.9
end

puts "合計料金は#{total_price.floor}円になります。"
