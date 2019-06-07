class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "数字を入力してください\n0:グー\n1:チョキ\n2:パー"
    player_hand = gets.to_i
    if player_hand == 0
      puts "あなたはグー！"
      return player_hand
    elsif player_hand == 1
      puts "あなたはチョキ！"
      return player_hand
    elsif player_hand == 2
      puts "あなたはパー！"
      return player_hand
    else
      puts "0から2の半角の値だよ。もう一度"
      player = Player.new
      player.hand
    end
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(0..2)
    if enemy_hand == 0
      puts "あいてはグー！"
      return enemy_hand
    elsif enemy_hand == 1
      puts "あいてはチョキ！"
      return enemy_hand
    else
      puts "あいてはパー！"
      return enemy_hand
    end
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    result = (player_hand - enemy_hand +3)%3
    if result == 2
      puts "あなたの勝ちです！"
    elsif result == 1
      puts "相手の勝ちです！"
    else
      puts "あいこでしょ！"
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      janken.pon(player.hand,enemy.hand)
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
