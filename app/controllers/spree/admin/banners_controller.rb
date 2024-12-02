module Spree
  module Admin
    class BannersController < ResourceController
      def index
        @banners = current_store.banners
      end
    end
  end
end
