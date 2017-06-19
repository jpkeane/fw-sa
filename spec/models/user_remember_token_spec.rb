# == Schema Information
#
# Table name: user_remember_tokens
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  remember_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe UserRememberToken, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :remember_digest }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :user }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :remember_digest }
  end
end
