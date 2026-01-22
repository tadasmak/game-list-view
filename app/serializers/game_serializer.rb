class GameSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :title, :platform, :region, :image_url, 
  :base_price, :current_price, :discount_percent, :has_cashback, 
  :cashback_amount, :likes_count

  def region
    object.region&.split("_").join(" ").upcase
  end

  def platform
    object.platform&.split("_").map { |word| word.capitalize }.join(" ")
  end

  def base_price
    number_with_precision(object.base_price, precision: 2)
  end

  def current_price
    number_with_precision(object.current_price, precision: 2)
  end

  def cashback_amount
    number_with_precision(object.cashback_amount, precision: 2)
  end
end
