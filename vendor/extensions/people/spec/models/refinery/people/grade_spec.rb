require 'spec_helper'

module Refinery
  module People
    describe Grade do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:grade)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
