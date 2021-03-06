require 'rails_helper'

RSpec.describe Goal, type: :model do
  context "model validations" do
    it 'has a valid factory' do
      expect(build(:goal)).to be_valid
    end

    it 'is invalid without a name' do
      goal = build(:goal, name: nil)
      expect(goal).to_not be_valid
    end

    it 'is invalid without a description' do
      goal = build(:goal, description: nil)
      expect(goal).to_not be_valid
    end

    it 'is invalid without a due_date' do
      goal = build(:goal, due_date: nil)
      expect(goal).to_not be_valid
    end
  end

  context 'model attributes' do
    let(:goal){create(:goal)}

    it 'has a #name attribute' do
      expect(goal.name).to eq("Weight Loss")
    end

    it 'has a #description attribute' do
      expect(goal.description).to eq("I will lose 7lbs.")
    end

    it 'has a #due_date attribute' do
      expect(goal.due_date).to eq(Date.new(2016, 4,23))
    end
  end
end
