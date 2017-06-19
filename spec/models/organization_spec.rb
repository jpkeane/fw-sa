# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'factories' do
    it 'is expected to persist a factory' do
      org = FactoryGirl.create(:organization)
      expect(org).to be_persisted
    end
  end
end
