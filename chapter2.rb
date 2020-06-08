
# returnメソッドは、途中で脱出する場合に使われることが多い
def greeting(country)
	return puts 'countryを入力してください' if country.nil?

	if country == 'japan'
		puts 'こんにちは'
	else
		puts 'hello'
	end
end

greeting(nil)
greeting('japan')



# 三項演算子
# 式 ? 真だった場合の処理 : 偽だった場合の処理

