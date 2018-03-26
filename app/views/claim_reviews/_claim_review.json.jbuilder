json.extract! claim_review, :datePublished, :url, :item_reviewed, :claimReviewed, :author, :review_rating
json.url claim_review_url(claim_review, format: :json)