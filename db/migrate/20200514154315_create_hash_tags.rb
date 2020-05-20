class CreateHashTags < ActiveRecord::Migration[6.0]
  def change
    create_table :hash_tags do |t|
      t.text :description

      t.timestamps
    end
  end
end
