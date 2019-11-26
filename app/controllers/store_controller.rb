class StoreController < ApplicationController
  def index
    @ads = Ad.all
  end
end
