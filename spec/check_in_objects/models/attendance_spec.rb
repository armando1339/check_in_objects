require 'rails_helper'

RSpec.describe Attendance, type: :model do
  let(:attendance){ Attendance.new }
  subject { attendance }

  context 'respond to' do
    it { should respond_to(:type) }
    it { should respond_to(:entity_type) }
    it { should respond_to(:entity_id) }
    it { should respond_to(:attendance_id) }
  end

  context 'associations' do
    it { should belong_to(:entity).optional }
  end
end