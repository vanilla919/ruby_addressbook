class HomeController < ApplicationController
    def index
        @persons = Intro.all
    end
end
