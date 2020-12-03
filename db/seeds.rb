def generate_random_usernames(number)
  # use the whole alphabet
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) {
    charset.sample
  }.join
end

def create_users
  arr = []
  1000.times do
    arr << generate_random_usernames(15)
  end
  arr.each do |x|
    puts "Creating user #{x}"
    User.create(username: x)
    puts "Username #{x} created!"
  end
end


puts "Creating Users"
create_users(arr)
puts "User creation complete"
