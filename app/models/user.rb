class User < ApplicationRecord
    has_secure_password
    has_many :appointments, dependent: :destroy
    has_many :services, through: :appointments
    has_many :employees, through: :services
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

end
