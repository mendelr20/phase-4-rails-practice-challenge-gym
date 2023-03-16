class Client < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :clients, through: :memberships
end
