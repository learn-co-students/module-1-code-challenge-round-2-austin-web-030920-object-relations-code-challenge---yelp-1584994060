class Customer
  attr_writer :reviews
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all<<self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

    def self.all
      @@all
    end
    
    def restaurants
      @reviews.map{|n| n.restaurant}.uniq
    end

    def add_review(restaurant, rating)
      Review.new(self, restaurant, rating)
    end

    def num_reviews
      @reviews.length
    end

    def find_by_name(name)
      @@all.each do |n|
        if n.full_name == name
          return name
        end
      end
      return "There is no one with that name here!"
    end

    def find_all_by_given_name(name)
      @@all.map{|n| n.given_name}
    end

end
