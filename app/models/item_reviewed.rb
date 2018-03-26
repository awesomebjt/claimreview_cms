class ItemReviewed < ApplicationRecord
    belongs_to :author
    has_many :claim_review
end
