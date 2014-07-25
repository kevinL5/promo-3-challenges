require 'sqlite3'

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{ CREATE TABLE posts
    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(255),
      source_url VARCHAR(255),
      date DATE,
      rating INT(1)
      )
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def display(row)
  puts "ID : #{row[0]}, Name : #{row[1]}, Url : #{row[2]}, Date : #{row[3]}, Rate : #{row[4]} / 10"
end

def create_post(db, post)
  #TODO: add a new post to your db
  db.execute "INSERT INTO posts (name, source_url, date, rating)
            VALUES ('#{post[:name]}', '#{post[:source_url]}', '#{post[:date]}', #{post[:rating]})"
end

def get_posts(db)
   #TODO: list all posts
  stm = db.execute "SELECT * FROM posts"
  stm.each { |row| display(row) }
end

def get_post(db, id)
  #TODO: get a specific post
  row = db.execute "SELECT * FROM posts WHERE id = #{id}"
  row = row.flatten
  display(row)
end

def update_post(db, id, name)
	#TODO: update a post's name in your db
  db.execute "UPDATE posts SET name = '#{name}' WHERE id = #{id}"
  row = db.execute "SELECT * FROM posts WHERE id = #{id}"
  row = row.flatten
  display(row)
end

def delete_posts(db)
  #TODO: delete a post in your db
  db.execute "DELETE FROM posts"
  db.execute "DELETE FROM sqlite_sequence WHERE name = 'posts'"
end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  db.execute "DELETE FROM posts WHERE id = #{id}"
end