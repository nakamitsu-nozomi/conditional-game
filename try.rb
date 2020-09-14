class User
  @@count = 0
  attr_accessor :id
  def initialize(name:)
    @id = @@count += 1
    @name = name
  end
  def info
    "@@count: #{@@count}, @id: #{@id}"
  end
end
user1 = User.new(name: "ユーザー1")
user2 = User.new(name: "ユーザー2")
puts user1.info
puts user2.info
puts "----------------------"
user1.id = 1000
puts user1.info
puts user2.info