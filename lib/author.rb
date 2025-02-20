require 'pry'
class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|info| info.author == self }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        new = Post.new(post_title)
        new.author = self
    end

    def self.post_count
        Post.all.count
    end
end