class Post

  attr_accessor :title, :author  #macro for #title #author
  @@all = []        #class variable set to array

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def self.all    #.all class method
    @@all         #returning array where all posts are
  end

  def author_name
    if author           #if author value is present
      return author.name    #return the name of author
    else nil          #if not, return nil
    end
  end

end
