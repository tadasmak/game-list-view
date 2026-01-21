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
      t.integer "discount_percent"
      t.boolean "has_cashback", default: false
      t.decimal "cashback_amount", precision: 9, scale: 2
      t.integer "likes_count"
    end
  end
end
