require "me_calculator"

describe MeCalculator do
	describe ".add" do
		context "given an empty me" do
			it "returns zero" do
				expect(MeCalculator.add("")).to eql(0)
			end
		end
		context "given '4'" do
			it "returns 4" do
				expect(MeCalculator.add("4")).to eql(4)
			end
		end
		context "given '10'" do
			it "return 10" do
				expect(MeCalculator.add("10")).to eql(10)
			end
		end
		context "given two numbers" do
			it "return 6" do
				expect(MeCalculator.add("4,2")).to eql(6)
			end
			it "return 117" do
				expect(MeCalculator.add("100,17")).to eql(117)
			end
		end
	end
end
