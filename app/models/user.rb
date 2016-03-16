class User < ActiveRecord::Base
  enum role: [:standard, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group
  belongs_to :company

  belongs_to :user_father, class_name: "User", foreign_key: 'user_father'
  
end
