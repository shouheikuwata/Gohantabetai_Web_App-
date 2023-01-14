class HelloController < ApplicationController
    #追加する箇所
    def index
    end
    def new
      @tweet = Tweet.new
    end
  end
  
