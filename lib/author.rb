
# Author
# #new
#   is initialized with a name (FAILED - 7)
# #name
#   has an attr_accessor for name (FAILED - 8)
# #posts
#   has many posts (FAILED - 9)
# #add_post
#   takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 10)
# #add_post_by_title
#   takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 11)
# .post_count
#   is a class method that returns the total number of posts associated to all existing authors (FAILED - 12)

class Author
    attr_accessor :name
    @@authors = []

    def initialize(author_name)
        self.name = author_name
        self.authors << self
        @posts = []
    end


    def authors
        @@authors
    end

    def posts
        @posts
    end

    def add_post(post)
        post.author = self
        self.posts << post
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        puts new_post
        new_post.author = self
        puts new_post.author.inspect
        self.posts << new_post
    end

    def self.post_count
        post_counter = 0
        @@authors.each do |author_o|
            author_o.posts.each do |post|
                post_counter += 1
            end
        end
        post_counter
    end

end

