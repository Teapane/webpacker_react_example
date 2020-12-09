def generate_random(number)
  # use the whole alphabet
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) {
    charset.sample
  }.join
end

def create_users
  arr = []
  1000.times do
    arr << generate_random(15)
  end
  arr.each do |x|
    puts "Creating user #{x}"
    User.create(username: x)
    puts "Username #{x} created!"
  end
end

# [4] pry(main)> Post
# => Post(id: integer, user_id: integer, title: string, created_at: datetime, updated_at: datetime)
#
def generate_posts
  arr = []
  1000.times do
    arr << generate_random(15)
  end
  arr.each do |x|
    puts "Creating Post #{x}"
    user_id = User.order(Arel.sql('RANDOM()')).first.id
    Post.create!(user_id: user_id, title: x)
  end
end

def feature_three(foo)
  puts "foo"
  puts "testing rebaser"
end
puts "Creating Users"
create_users
puts "User creation complete"

puts "Creating Posts"
generate_posts
puts "Posts creation complete"
