require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }

  # TODO: use ActiveRecord to add a new post for the user logged in!
  post = Post.create(post_params)
  user.posts << post
end

def list_posts(user)
  # TODO: use ActiveRecord to get all posts of the current user
  p user.posts
end

def delete_posts(user)
  # TODO: use ActiveRecord to delete all posts of current user
  user.posts.destroy_all
end

user = User.create(name: 'Jean', email: 'jean@icq.com')

while true

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>').to_i
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then break
  end
end
