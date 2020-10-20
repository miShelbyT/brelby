class WineShopsController < ApplicationController
    def show 
        @wine_shop = WineShop.find(params[:id])
    end
end
