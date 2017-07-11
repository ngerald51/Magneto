class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :education, dependent: :destroy
  has_many :work_exps, dependent: :destroy
  has_many :skill, dependent: :destroy
  
end
