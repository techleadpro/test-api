module Api
  module V1
    class QuotesController < ApplicationController
      # all Quotes
      def index
        quotes. Quote.all
        render json: quotes
      end

      #random quotes
      def random
        quote = Quote.order('RANDOM()').first
          render json: quote
      end
    end
  end
end
