class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def full_name
     "Name: #{self.first_name} #{self.last_name} "
    end

    def favorite_restaurant
         restaurants.order('star_rating DESC').limit(1)
    end

        
    #This one doesnt work, but i leave to take a look later on xD
     def add_review(restaurant, rating)
       restaurants.create(name: restaurant_id, star_rating: rating)
     end
end