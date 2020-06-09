def to_hex(r, g, b)
end

def to_ints(rgb)
end



# 配列から値が奇数の要素を削除する
# delete_ifはブロックの戻り値が真であれば配列から削除
a = [1, 2, 3, 4]

a.delete_if do |n|
	n.odd?
end
a #=> [2, 4]


# 偶数のみ値を10倍にしてから加算する
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
	sum_value = n.even? ? n * 10 : n
	sum += sum_value
end


# mapメソッド
# ブロックの戻り値を配列で返す
numbers = [1, 2, 3, 4]
new_numbers = numbers.map { |n| n * 10 }
new_numbers #=> [10, 20, 30, 40]


# selectメソッド（エイリアスはfind_allメソッド, 反対はrejectメソッド)
# 評価した値が真の要素を集めた配列を返す
numbers = [1, 2, 3, 4]
new_numbers = numbers.select do |n|
	n.even?
end
new_numbers #=> [2, 4]


# ブロックを簡単に書く
['ruby', 'java', 'php', 'perl'].map { |s| s.upcase }
# ↓
['ruby', 'java', 'php', 'perl'].map(&:upcase)



# %記法
# 空白(スペース)が要素の区切り文字となる
['apple', 'melon', 'orange']
%w(apple melon orange) #式展開とかしたい場合は、%W(大文字)
%w!apple melon orange!


# splitメソッド
# 引数で渡した区切り文字で文字列を配列に分割(charsメソッドは1文字ずつで区切る)
'Ruby,Java,Perl,PHP'.split(',')
#=> ["Ruby", "java", "Perl", "PHP"]


# 添え字付きの繰り返し処理
# with_indexメソッドはeach以外にもmap, delete_ifなど繰り返し処理に使える
fruits = ['apple', 'orange', 'melon']
fruits.each.with_index { |fruit, i| "#{i}": "#{fruit}"}
#=> 0: apple
  # 1: orange
  # 2: melon


