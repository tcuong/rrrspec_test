require "spec_helper"
require "me_calculator"

describe MeCalculator do
	describe ".add" do
		context "given an empty me" do
			it "returns zero" do
        sleep(600)
				expect(MeCalculator.add("")).to eql(0)
      end
		end
	end
end
