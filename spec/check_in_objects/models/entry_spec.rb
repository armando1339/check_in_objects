require 'rails_helper'

RSpec.describe Entry, type: :model do
  let(:entry){ Entry.new }
  subject { entry }

  context 'respond to' do
    it { should respond_to(:type) }
    it { should respond_to(:entity_type) }
    it { should respond_to(:entity_id) }
    it { should respond_to(:attendance_id) }
  end

  context 'associations' do
    it { should have_one(:exit).dependent(:destroy).with_foreign_key(:attendance_id) }
  end
end