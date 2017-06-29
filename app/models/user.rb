class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable, :trackable, :rememberable, :validatable and :omniauthable
  devise :database_authenticatable, :registerable

  validates :email, :presence => true
  validates :username, :presence => true
  validates :first_name, :last_name,
            :length => {:in => 2..18},
            :allow_blank => true

end
