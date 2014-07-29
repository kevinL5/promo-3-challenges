require_relative 'config/application'

DB = ActiveRecord::Base.connection

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post
  name = ask('Name:')
  source_url = ask('Source url:')
  rating = ask('Rating:')
  date = Time.now

  DB.execute("INSERT INTO posts (name, source_url, rating, created_at) VALUES ('#{name}', '#{source_url}', #{rating}, '#{date}')")
end

def get_posts
<<<<<<< HEAD
  posts = DB.execute('SELECT * FROM posts')
=======
  posts = DB.execute('TODO: write the SQL query to get all posts')
>>>>>>> ba5fc0ee5c682b443a140ff22922c4ab87066e78

  puts '-' * 50
<<<<<<< HEAD
  puts '%-3s %-15s %-20s %-30s %s' % ['Id', 'Name', 'Source URL', 'Created At', 'Rating']
=======
  puts '%-3s %-15s %-20s %-30s %s' % ['#', 'Name', 'Source URL', 'Created At', 'Rating']
>>>>>>> 56bb70681e2594f68796a84853debe0562f0f006

  posts.each do |post|
    puts '%-3d %-15s %-20s %-30s %d' % [post['name'], post['source_url'], post['date'], post['rating']]
  end

  puts '-' * 50
end

def delete_posts
  DB.execute('DELETE FROM posts')
end

while true
  puts 'Hey you, what do you want to do today? Enter <task_id>'
  puts '1. Create a post'
  puts '2. Read your posts'
  puts '3. Delete all posts'
  puts '4. Exit'

  case ask('>').to_i
  when 1 then create_post
  when 2 then get_posts
  when 3 then delete_posts
  when 4 then break
  end
end
