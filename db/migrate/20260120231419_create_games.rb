class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.timestamps
      t.string "title"
      t.integer "platform"
      t.integer "region"
      t.string "image_url"
      t.decimal "base_price"
      t.decimal "current_price"
      t.integer "discount_percent"
      t.boolean "has_cashback"
      t.decimal "cashback_amount"
      t.integer "likes_count"
    end
  end
end
