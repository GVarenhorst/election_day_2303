require './lib/candidate'

RSpec.describe Candidate do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  describe '#initialize' do
    it 'exists' do

      #expect(require './lib/candidate').to eq(true)
      expect(@diana).to be_a(Candidate)
    end

    it 'has a name' do

      expect(@diana.name).to eq("Diana D")
    end

    it 'has a party' do

      expect(@diana.party).to eq(:democrat)
    end
  end
  describe '#votes' do
    it 'can vote' do

      expect(@diana.votes).to eq(0)

      @diana.vote_for!
      @diana.vote_for!
      @diana.vote_for!

      expect(@diana.votes).to eq(3)

      @diana.vote_for!

      expect(@diana.votes).to eq()
    end
  end
end