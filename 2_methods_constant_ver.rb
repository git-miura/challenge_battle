#プランを表示
def disp_plans(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(FIRST_PLAN_NUM) do | plan, i |
    puts "#{i}.  #{plan[:place]}旅行（#{plan[:price]}円）"
  end
end

#プランを選択してもらう
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    plan_num = gets.to_i
    break if (FIRST_PLAN_NUM..LAST_PLAN_NUM).include?(plan_num)
    puts "#{FIRST_PLAN_NUM}~#{LAST_PLAN_NUM}の番号を入力して下さい。"
  end
  chosen_plan_index = plan_num - FIRST_PLAN_NUM
  plans[chosen_plan_index]
end

#人数を決めてもらう
def decide_people_num(chosen_plan)
  puts <<~TEXT
  #{chosen_plan[:place]}旅行ですね。
  何名で予約されますか？
  TEXT
  while true
    print "人数を入力 > "
    booking_people_num = gets.to_i
    break if booking_people_num >= 1
    puts "1人以上を入力して下さい。"
  end
  booking_people_num
end

#合計金額の計算
def calculate_charges(chosen_plan, booking_people_num)
  puts "#{booking_people_num}名ですね。"
  total_price = chosen_plan[:price] * booking_people_num
  if booking_people_num >= DISCOUNT_STANDARD_VALUE
    puts "#{DISCOUNT_STANDARD_VALUE}名以上ですので{(DISCOUNT_RATE*100).floor}%割引となります"
    total_price *= AFTER_DISCOUNT_RATE
  end

  puts "合計料金は#{total_price.floor}円になります。"
end
