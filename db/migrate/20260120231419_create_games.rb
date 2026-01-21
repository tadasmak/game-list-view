class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.timestamps
      t.string "title", null: false
      t.integer "platform", null: false
      t.integer "region", null: false
      t.string "image_url"
      t.decimal "base_price", precision: 9, scale: 2
      t.decimal "current_price", precision: 9, scale: 2
      t.integer "discount_percent", default: 0, null: false
      t.boolean "has_cashback", default: false, null: false
      t.decimal "cashback_amount", precision: 9, scale: 2
      t.integer "likes_count", default: 0, null: false
    end

    add_index :games, :title
    add_index :games, :platform
    add_index :games, :region
  end
end
