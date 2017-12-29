require 'spec_helper'

module Refinery
  module Stances
    describe Stance do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:stance,
          :japanese_name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:japanese_name) { should == "Refinery CMS" }
      end
    end
  end
end
