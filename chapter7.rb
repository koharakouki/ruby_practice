 class User
 	def initialize(name)
 		@name = name
 	end

# @nameを外部から参照するメソッド
 	def name
 		@name
 	end

# @nameを外部から変更するためのメソッド
 	def name=(value)
 		@name = value
 	end
end

# 上記のname, name=(value)メソッドは、 attr_accessor :name に書き換えられる
class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end



class User
 	def initialize(name)
 		@name = name
 	end

  # クラスメソッド
 	def self.create_users(names)
    names.map do |name|
    	User.new(name)
    end
  end

  # インスタンスメソッド
  def hello
    "Hello, I am #{@name}."
  end
end

names = ['Alice', 'Bob', 'Calol']
users = User.create_users(names)

users.each do |user|
	puts user.name
end
#=> Hello, I am Alice.
#=> Hello, I am Bob.
#=> Hello, I am Calol.

