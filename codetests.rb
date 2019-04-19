#シンプレクスのhalfday選考会の問題をrubyで解いてみる
#要件HIGH＆LOWゲーム　基準値を100として,70~130の間で数値をランダムに出力 高いか低いかを当てる
#LかHを入力 勝ちまたは負けを出力





puts "High&Lowゲーム"
puts "あなたは今3,000円持っています。ゲームに勝つと1,000円を得られ、負けると500円を失います。"
puts "所持金が10,000円を超えるか、500円以下になるとゲームは終了です。"
puts "基準値100"
puts "LかHを入力を入力してください"


str = gets.chomp

num1 = 0
num2 = 0
num3 = 0
num4 = 0
s_num = 3000


if 500 <= s_num && s_num <= 10000

	while str != "e" 

		n = Random.rand(70..130)

		if str == "L" || str == "l" || str == "H" || str == "h" || str == "e"

			puts "コンピューターの数値 : #{n}"

			if n < 100 
				if str ==  "L" || str == "l"
					puts "勝ち"
					num1 += 1
					num4 += 1
					s_num += 5000
					puts "現在の所持金 : #{s_num}円"
					if num4 > 1
						puts "#{num4}連勝"
					end
				else
					puts "負け"
					num2 += 1
					num4 = 0
					s_num -= 500
					puts "現在の所持金 : #{s_num}円"
				end
			elsif n  == 100
				puts "引き分け"
					num3 += 1
					num4 = 0
			else
				if str == "H" || str == "h"
					puts "勝ち"
					num1 += 1
					num4 += 1
					s_num += 1000
					puts "現在の所持金 : #{s_num}円"
					if num4 > 1
						puts "#{num4}連勝"
					end
				else
					puts "負け"
					num2 += 1
					num4 = 0
					s_num -= 500
					puts "現在の所持金 : #{s_num}円"
				end
			end

		else
			puts "エラー"
		end

	str = gets.chomp

	end

end

puts "ゲームを終了します"
puts "#{num1}勝#{num2}敗#{num3}分です"
puts "最終的な所持金は#{s_num}円でした"
