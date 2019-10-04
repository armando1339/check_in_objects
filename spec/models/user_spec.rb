require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){ User.new }
  subject { user }

  context 'associations' do
    it { should have_many(:attendances).dependent(:destroy) }
    it { should have_many(:entries).dependent(:destroy) }
  end

  it { expect(User.respond_to?(:acts_as_object_checkable)).to be_truthy }
end
