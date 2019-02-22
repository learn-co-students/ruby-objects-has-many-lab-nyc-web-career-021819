class Post 

    @@all = []

    attr_accessor :title, :author

    def initialize(title)
        @title = title
        @@all.push(self)
        @author = author

    end

    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.name
        else
            nil
        end
    end
end
