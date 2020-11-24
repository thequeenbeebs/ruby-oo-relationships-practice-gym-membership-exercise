class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym 
    end
  end

  def self.average_lift_total
    total = self.all.sum {|lifter| lifter.lift_total}
    total/self.all.length
  end

  def total_cost
    self.memberships.sum do |membership|
      membership.cost 
    end
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
