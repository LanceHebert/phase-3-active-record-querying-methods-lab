class Show < ActiveRecord::Base


    def self.highest_rating
        self.all.map{|r| r.rating}.max
    end
    def self.most_popular_show
        rating_show = self.all.map{|r| r.rating}.max
        self.find_by(rating: rating_show)
    end

    def self.lowest_rating
        self.all.map{|r| r.rating}.min
    end
    def self.least_popular_show
        rating_show = self.all.map{|r| r.rating}.min
        self.find_by(rating: rating_show)
    end
    def self.ratings_sum
        self.all.map{|r| r.rating}.sum
    end
    def self.popular_shows
        self.all.filter{|f| f.rating > 5}       
    end
    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end