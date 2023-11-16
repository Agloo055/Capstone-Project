class CreateColSets < ActiveRecord::Migration[7.1]
  def change
    create_table :col_sets do |t|
      t.string :set_num
      t.string :name
      t.integer :year
      t.integer :theme_id
      t.integer :num_parts
      t.string :set_img_url
      t.string :set_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
