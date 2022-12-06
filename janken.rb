puts "じゃんけん..."

def janken
  puts "0 (グー) / 1 (チョキ) / 2 (パー) / 3 (戦わない)"

  choices = ["グー", "チョキ", "パー"]
  my_choice = gets.to_i
  cpu_choice = rand(3)

  if my_choice == 3
    exit
  elsif my_choice > 3
    puts "0, 1, 2, 3 のどれかを選択してください"
    janken()
  end

  puts "ホイ！"
  puts "--------------------------"
  puts "あなた：#{choices[my_choice]}を出しました"
  puts "相手：#{choices[cpu_choice]}を出しました"
  puts "--------------------------"

  if my_choice == cpu_choice
    puts "あいこで..."
    janken()
  elsif (my_choice == 0 && cpu_choice == 1)||(my_choice == 1 && cpu_choice == 2)||(my_choice == 2 && cpu_choice == 0)
    puts "あっち向いて"
    $result = "勝ち"
    finger_face()
  else
    puts "あっち向いて"
    $result = "負け"
    finger_face()
  end
end

def finger_face
  puts "1 (上) / 2 (下) / 3 (右) / 4 (左)"

  direction = ["上", "下", "右", "左"]
  my_direction = gets.to_i
  cpu_direction = rand(1..4)

  if (my_direction > 4 || my_direction == 0)
    puts "1, 2, 3, 4 のどれかを選択してください"
    finger_face()
  end

  puts "ホイ！"
  puts "--------------------------"
  puts "あなた：#{direction[my_direction - 1]}"
  puts "相手：#{direction[cpu_direction - 1]}"
  puts "--------------------------"

  if my_direction == cpu_direction
    puts "あなたの#{$result}です"
    exit
  else
    puts "じゃんけん..."
    janken()
  end
end

janken()
