class WineShopsController < ApplicationController
    def index 
        @wine_shops = WineShop.all
    end
end
