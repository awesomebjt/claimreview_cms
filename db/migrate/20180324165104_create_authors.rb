class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :author_type
      t.string :name

      t.timestamps
    end
  end
end
