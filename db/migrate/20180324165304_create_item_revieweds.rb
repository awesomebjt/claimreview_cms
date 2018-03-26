class CreateItemRevieweds < ActiveRecord::Migration[5.1]
  def change
    create_table :item_revieweds do |t|
      t.string :ir_type
      t.integer :author_id
      t.date :datepublished
      t.string :url

      t.timestamps
    end
  end
end
