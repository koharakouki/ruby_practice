# fizz_buzzプログラムの作成
# 3で割り切れると'Fizz'を返す
# 5で割り切れると'Buzz'を返す
# 15で割り切れると'Fizz_Buzz'を返す
# それ以外は入力した値を文字列で返す

def fizz_buzz(int)
	int = int.to_i
	if int % 15 == 0
		puts 'Fizz_Buzz'
	elsif int % 3 == 0
		puts 'Fizz'
	elsif int % 5 == 0
		puts 'Buzz'
	else
		puts int.to_s
	end
end

fizz_buzz(4)
fizz_buzz(5)
fizz_buzz(6)
fizz_buzz(6556246534)
fizz_buzz(463562)
fizz_buzz(456562)
fizz_buzz(4256255622265246565262)