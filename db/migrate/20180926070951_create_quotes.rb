class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string  :title
      t.string  :link
      t.integer :post_id, unique: true
      t.string  :content

      t.timestamps
    end
  end
end
