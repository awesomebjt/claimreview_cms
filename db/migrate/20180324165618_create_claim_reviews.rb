class CreateClaimReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :claim_reviews do |t|
      t.date :datePublished
      t.string :url
      t.integer :item_reviewed_id
      t.string :claimReviewed
      t.integer :author_id
      t.integer :review_rating_id

      t.timestamps
    end
  end
end
