# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  email      :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base

  validates :user_id, presence: true, uniqueness: {scope: :email}
  validates :email, presence: true
  validates :name, presence: true

  belongs_to :owner, class_name: "User", foreign_key: :user_id, primary_key: :id
  has_many :contact_shares
  has_many :shared_users, through: :contact_shares, source: :user

end
