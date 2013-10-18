class PricelistController < ApplicationController
  skip_before_filter :authorize, only: [:index]
  def index
  	@artworks = Artwork.where(sold: [false, nil])
  	
    @categories = Category.order("position")
  end
end
