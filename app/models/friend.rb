class Friend < ApplicationRecord
  belongs_to :user

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_length_of :first_name, :minimum => 3, :maximum => 15
  validates_length_of :last_name, :minimum => 3, :maximum => 15
  validates :email, :presence => true
  validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
end
