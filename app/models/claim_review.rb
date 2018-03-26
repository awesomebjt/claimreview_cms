class ClaimReview < ApplicationRecord
    belongs_to :author
    belongs_to :item_reviewed
    belongs_to :review_rating
end
