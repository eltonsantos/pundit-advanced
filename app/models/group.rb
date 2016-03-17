class Group < ActiveRecord::Base
  belongs_to :company
  
  has_many :users
  has_many :group_functionalities
  has_many :functionalities, through: :group_functionalities

  # accepts_nested_attributes_for :functionalities
end
