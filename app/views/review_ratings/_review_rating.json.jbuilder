json.extract! review_rating, :id, :type, :ratingValue, :bestRating, :worstRating, :alternateName, :created_at, :updated_at
json.url review_rating_url(review_rating, format: :json)
