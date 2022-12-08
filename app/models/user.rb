class User < ApplicationRecord
    paginates_per 5
    has_one :company
    has_one :role
end
