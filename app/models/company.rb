class Company < ApplicationRecord
    paginates_per 5
    belongs_to :user
 end
