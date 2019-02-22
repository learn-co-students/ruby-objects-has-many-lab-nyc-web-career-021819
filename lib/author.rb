class Author

  attr_accessor :name
  attr_reader :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author=(self)
    self.posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end

  def self.post_count
    total = 0
    @@all.each do |authors|
      total += authors.posts.length
      # binding.pry
    end
    total
  end

end
