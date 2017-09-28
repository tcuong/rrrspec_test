require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
	describe "test" do
    	subject { true }
    	# 未ログイン
	    context 'when not login.' do
	      it { is_expected.to eq true }
	    end
	end    
end