require_relative '../movies_imdb'

describe TVShow do
	describe "test_series" do

	  before do
	    @test_show = TVShow.new
	    @test_show.name = "adventures of bambi"
	    @test_show.own_rating = 5
	    @test_show.own_comments = "bla bla bla lalalala"
	  end

		it "shoild have a valid & unique name" do
			@test_show.name = nil
			@test_show.valid?.should be_falsy
		end

		it "should have the title bambi sth" do
			@test_show.name.should == "adventures of bambi"
		end

		it "should have a rating 5" do
			@test_show.own_rating.should == 5
		end
	end
end