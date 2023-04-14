class Candidate
  attr_reader :name, :party
  def initialize(info)
    @name = info[:name]
    @party = info[:party]
    @votes = 0
    # require 'pry'; binding.pry
  end
  def votes
    if vote_for!
      @name.votes += 1
    end
end