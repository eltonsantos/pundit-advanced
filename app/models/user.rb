class User < ActiveRecord::Base
  enum role: [:admin, :standard]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group
  belongs_to :company

  belongs_to :father, class_name: "User"

end
