class CreateReviewRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :review_ratings do |t|
      t.string :rr_type
      t.string :ratingValue
      t.string :bestRating
      t.string :worstRating
      t.string :alternateName

      t.timestamps
    end
  end
end
