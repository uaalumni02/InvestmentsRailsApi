class Investor < ApplicationRecord
    has_many :investments 
    has_many :companies, through: :investments 
end
