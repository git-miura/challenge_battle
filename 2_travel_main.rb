require "./methods"
# require "./methods_constant_ver"

plans =[
  { place: "沖縄", price: 10000},
  { place: "北海道", price: 20000},
  { place: "九州", price: 15000}
]

# #表示する最初のプラン番号
# FIRST_PLAN_NUM = 1
# #表示する最後のプラン番号
# LAST_PLAN_NUM = (FIRST_PLAN_NUM + plans.size) - 1
# #割引適用の人数基準値
# DISCOUNT_STANDARD_VALUE = 5
# #割引率
# DISCOUNT_RATE = 0.1
# #割引後の本体価格の割合
# AFTER_DISCOUNT_RATE = 1 - DISCOUNT_RATE

disp_plans(plans)
chosen_plan = choose_plan(plans)
booking_people_num = decide_people_num(chosen_plan)
calculate_charges(chosen_plan, booking_people_num)
