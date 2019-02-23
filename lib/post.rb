# require 'pry'
# require_relative './author.rb'

class Post

attr_reader :title
attr_accessor :author
@@all = []

def initialize(title)
@title = title
@@all << self
end

def self.all
 @@all
end


def author_name
  if self.author != nil
    return self.author.name
  else
 self.author
end
end


end
