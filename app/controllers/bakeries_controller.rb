class BakeriesController < ApplicationController
    def index 
        @bakeries = Bakery.all
    end
end
