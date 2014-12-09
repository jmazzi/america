require 'spec_helper'

module America
  describe StateName do
    context "Converting from state name to abbreviation" do

      it "returns the abbreviation for known states" do
        state_name = StateName.new('Pennsylvania')
        expect(state_name.abbreviation).to eql('PA')
      end

      it "ignores whitespace" do
        state_name = StateName.new('   Pennsylvania    ')
        expect(state_name.abbreviation).to eql('PA')
        expect(state_name.fullname).to eql('pennsylvania')
      end

      it "ignores case" do
        state_name = StateName.new('pennsYlvania')
        expect(state_name.abbreviation).to eql('PA')
        expect(state_name.fullname).to eql('pennsylvania')
      end

      it "known for found states" do
        state_name = StateName.new('Pennsylvania')
        expect(state_name).to be_known
      end

      it "is not unknow for missing states" do
        state_name = StateName.new('Hamburger')
        expect(state_name).to_not be_known
      end
    end

    context "Converting from abbreviation to state" do
      it "returns the abbreviation for known states" do
        state_name = StateName.new('PA')
        expect(state_name.abbreviation).to eql('PA')
      end

      it "ignores whitespace" do
        state_name = StateName.new(' PA   ')
        expect(state_name.abbreviation).to eql('PA')
        expect(state_name.fullname).to eql('pennsylvania')
      end

      it "ignores case" do
        state_name = StateName.new('pA')
        expect(state_name.abbreviation).to eql('PA')
        expect(state_name.fullname).to eql('pennsylvania')
      end

      it "known for found states" do
        state_name = StateName.new('PA')
        expect(state_name).to be_known
      end

      it "is not unknow for missing states" do
        state_name = StateName.new('FF')
        expect(state_name).to_not be_known
      end
    end
  end
end
