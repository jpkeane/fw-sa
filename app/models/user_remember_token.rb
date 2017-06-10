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

class UserRememberToken < ApplicationRecord
  belongs_to :user

  validates :remember_digest, presence: true
end
