class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :type
      t.string :url
      t.text :notes
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
