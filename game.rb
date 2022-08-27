
def janken
  puts "じゃんけん、、、"
  puts "0 (グー)、1 (チョキ)、2 (パー)、3 (戦わない)"
  
  jankens = ["グー", "チョキ", "パー"]
  my_hand = gets.to_i
  np_hand = rand(3)
  
  if my_hand == 0 || my_hand == 1 || my_hand == 2
    puts "ポン！"
    puts "あなた：#{jankens[my_hand]}を出しました"
    puts "相手：#{jankens[np_hand]}を出しました"
    puts "--------------------------------------------------"
    
    if my_hand == np_hand
      puts "あいこ"
      return true
    
    elsif (my_hand == 0 && np_hand == 1) || (my_hand == 1 && np_hand == 2) || (my_hand == 2 && np_hand == 0) 
      $janken_result = "win"
      puts "じゃんけんに勝った"
      return false
    
    else
      $janken_result = "lose"
      puts "じゃんけんに負けた"
      return false
      
    end
  
  elsif my_hand == 3
    puts "ゲームをやめます"
    exit
  end

end

def acchimuite_hoi
  np_direction = rand(4)
  directions = ["上", "下", "左", "右"]
  
  puts "あっち向いて、、、"
  puts "0 (上)、1 (下)、2 (左)、3 (右)"
  my_direction = gets.to_i
  puts "ホイ！"
  puts "--------------------------------------------------"
  puts "あなた：#{directions[my_direction]}"
  puts "相手：#{directions[np_direction]}"
  
  if $janken_result == "win" && my_direction == np_direction
    puts "おめでとう！あなたの勝ち"
    return false
  
  elsif $janken_result == "lose" && my_direction == np_direction
    puts "残念、、、あなたの負け"
    return false
  
  else
    puts "じゃんけんからやり直し"
    puts "--------------------------------------------------"
    return true

  end

end

def game
  if janken == true
    return true
    
  elsif acchimuite_hoi == true
    return true
    
  else
    return false
  
  end

end

next_game = true
while next_game do
  next_game = game

end