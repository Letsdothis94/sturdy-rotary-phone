class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def Restaurant.fanciest
       self.order('price DESC').limit(1)
    end

    
end