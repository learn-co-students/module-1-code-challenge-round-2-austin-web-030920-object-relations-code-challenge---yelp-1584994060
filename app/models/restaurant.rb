class Restaurant
  attr_writer :reviews
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def reviews
    @reviews
  end

  def  customers
    @reviews.map{|n| n.customer}.uniq
  end
  
  def average_star_rating
    avg = 0
    @reviews.each do |n|
      avg += n.rating
    end
    return avg / @reviews.length
  end
end
