class Author

  attr_accessor :name, :posts   #macro for #name and #posts

  def initialize(name)
    @name = name            #initialize name
    @posts = []             #array to store all posts
  end

  def add_post(post)
    @posts << post          #pushes a post into array
    post.author = self      #setting author of post to author
  end

  def add_post_by_title(title)
    post = Post.new(title)        #creating new post
    @posts << post                #push post into array
    post.author = self            #set that post to the author
  end

  def self.post_count
    Post.all.count   #takes class, gets all, counts
  end

end
