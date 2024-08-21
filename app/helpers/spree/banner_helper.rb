# frozen_string_literal: true

module Spree
  module BannerHelper
    def banner
      return unless current_store.present?

      banners = current_store.banners.where(published: true)
      banners.each do |banner|
        @result = banner
      end
      @result
    end
  end
end
