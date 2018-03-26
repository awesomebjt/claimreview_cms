class Author < ApplicationRecord
    has_many :claim_review
    has_many :item_reviewed
end
