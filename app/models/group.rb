class Group < ApplicationRecord
  has_many :user_group_ships, dependent: :destroy
  has_many :users, through: :user_group_ships

  has_many :issue_group_ships, dependent: :destroy
  has_many :issues, through: :issue_group_ships

end
