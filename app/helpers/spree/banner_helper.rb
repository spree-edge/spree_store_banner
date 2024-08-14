# frozen_string_literal: true

module Spree
  module BannerHelper
    def banner
      banners = current_store.banners.where(published: true)
      banners.each do |banner|
        @result = banner
      end
      @result
    end
  end
end
