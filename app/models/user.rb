# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

         validates :first_name, presence: true
         validates :last_name, presence: true
       
         # Assuming 'admin' is a boolean field in your users table
         validates :admin, inclusion: { in: [true, false] }
end
