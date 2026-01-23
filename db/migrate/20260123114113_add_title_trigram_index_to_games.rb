class AddTitleTrigramIndexToGames < ActiveRecord::Migration[8.0]
  def change
    remove_index :games, :title

    add_index :games, :title, using: :gin, opclass: :gin_trgm_ops
  end
end
