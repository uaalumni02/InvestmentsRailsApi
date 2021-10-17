class Company < ApplicationRecord
    has_many :investments
    has_many :investors, through: :investments
end
