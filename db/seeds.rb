# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Game.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!("games")

Game.create!([
    {
        title: "Split Fiction",
        platform: :ea_games,
        region: :global,
        image_url: "https://via.placeholder.com/300x400/4A5568/FFFFFF?text=Split+Fiction",
        base_price: 49.99,
        current_price: 40.93,
        discount_percent: 18,
        has_cashback: true,
        cashback_amount: 4.50,
        likes_count: 626
    },
    {
        title: "Split Fiction",
        platform: :xbox_series,
        region: :europe,
        image_url: "https://via.placeholder.com/300x400/4A5568/FFFFFF?text=Split+Fiction",
        base_price: 49.99,
        current_price: 34.14,
        discount_percent: 32,
        has_cashback: true,
        cashback_amount: 3.76,
        likes_count: 500
    },
    {
        title: "Split Fiction",
        platform: :xbox_series,
        region: :global,
        image_url: "https://via.placeholder.com/300x400/4A5568/FFFFFF?text=Split+Fiction",
        base_price: 49.99,
        current_price: 35.15,
        discount_percent: 30,
        has_cashback: true,
        cashback_amount: 3.87,
        likes_count: 1039
    },
    {
        title: "Split Fiction",
        platform: :nintendo_switch_2,
        region: :europe,
        image_url: "https://via.placeholder.com/300x400/4A5568/FFFFFF?text=Split+Fiction",
        base_price: 49.99,
        current_price: 36.25,
        discount_percent: 27,
        has_cashback: true,
        cashback_amount: 3.99,
        likes_count: 288
    },
    {
        title: "FIFA 23",
        platform: :steam,
        region: :global,
        image_url: "https://via.placeholder.com/300x400/00B140/FFFFFF?text=FIFA+23",
        base_price: 69.99,
        current_price: 13.99,
        discount_percent: 80,
        has_cashback: true,
        cashback_amount: 1.54,
        likes_count: 2456
    },
    {
        title: "FIFA 23",
        platform: :playstation_5,
        region: :europe,
        image_url: "https://via.placeholder.com/300x400/00B140/FFFFFF?text=FIFA+23",
        base_price: 69.99,
        current_price: 17.99,
        discount_percent: 74,
        has_cashback: true,
        cashback_amount: 1.98,
        likes_count: 1823,
    },
    {
        title: "FIFA 23",
        platform: :xbox_series,
        region: :north_america,
        image_url: "https://via.placeholder.com/300x400/00B140/FFFFFF?text=FIFA+23",
        base_price: 69.99,
        current_price: 19.99,
        discount_percent: 71,
        has_cashback: true,
        cashback_amount: 2.20,
        likes_count: 1567
    },
    {
        title: "FIFA 23",
        platform: :ea_games,
        region: :global,
        image_url: "https://via.placeholder.com/300x400/00B140/FFFFFF?text=FIFA+23",
        base_price: 69.99,
        current_price: 15.99,
        discount_percent: 77,
        has_cashback: true,
        cashback_amount: 1.76,
        likes_count: 3421
    },
    {
        title: "Red Dead Redemption 2",
        platform: :steam,
        region: :global,
        image_url: "https://via.placeholder.com/300x400/8B4513/FFFFFF?text=RDR2",
        base_price: 59.99,
        current_price: 29.99,
        discount_percent: 50,
        has_cashback: true,
        cashback_amount: 3.30,
        likes_count: 5678
    },
    {
        title: "Red Dead Redemption 2",
        platform: :epic_games,
        region: :europe,
        image_url: "https://via.placeholder.com/300x400/8B4513/FFFFFF?text=RDR2",
        base_price: 59.99,
        current_price: 26.99,
        discount_percent: 55,
        has_cashback: true,
        cashback_amount: 2.97,
        likes_count: 4321
    },
    {
        title: "Red Dead Redemption 2",
        platform: :playstation_5,
        region: :global,
        image_url: "https://via.placeholder.com/300x400/8B4513/FFFFFF?text=RDR2",
        base_price: 59.99,
        current_price: 32.99,
        discount_percent: 45,
        has_cashback: true,
        cashback_amount: 3.63,
        likes_count: 3892
    },
    {
        title: "Red Dead Redemption 2",
        platform: :xbox_series,
        region: :north_america,
        image_url: "https://via.placeholder.com/300x400/8B4513/FFFFFF?text=RDR2",
        base_price: 59.99,
        current_price: 27.99,
        discount_percent: 53,
        has_cashback: true,
        cashback_amount: 3.08,
        likes_count: 2987
    }
])

puts "Created #{Game.count} games."