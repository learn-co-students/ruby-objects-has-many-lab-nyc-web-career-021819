class Author
  attr_accessor :name

  @@all_authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@all_authors << self
  end

  def add_post(post)

    @posts << post

    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(post_title)
    newPost = Post.new(post_title)
    add_post(newPost)
  end

  def self.post_count

    counter = 0
    @@all_authors.select do |author|

      counter += author.posts.length
    end
    counter
  end

end
