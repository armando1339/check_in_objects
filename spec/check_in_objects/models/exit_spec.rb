require 'rails_helper'

RSpec.describe Exit, type: :model do
  let(:_exit){ Exit.new }
  subject { _exit }

  context 'respond to' do
    it { should respond_to(:type) }
    it { should respond_to(:entity_type) }
    it { should respond_to(:entity_id) }
    it { should respond_to(:attendance_id) }
  end

  context 'associations' do
    it { should belong_to(:entry).with_foreign_key(:attendance_id).optional }
  end
end