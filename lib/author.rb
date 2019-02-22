require_relative "post.rb"

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

 def self.post_count
   total_posts = []
   Post.all.each do |post|
     total_posts << post.author.posts
   end
   total_posts.length
 end


end
