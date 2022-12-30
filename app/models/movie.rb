class Movie < ActiveRecord::Base

    # attr_accessor :title

    # def intialize(title:)
    #     @tilte = title
    # end

    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        return self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(title)
        self.find_by(title)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(name)
        self.update(name)
    end

    def self.update_all_titles(name)
        self.update(title:name)
    end

    def self.delete_by_id(id)
        self.destroy(id)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end