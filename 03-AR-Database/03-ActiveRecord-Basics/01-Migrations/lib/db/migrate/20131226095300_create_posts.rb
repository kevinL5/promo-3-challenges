class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string      :name
      p.string      :source_url
      p.datetime    :created_at
    end
  end
end