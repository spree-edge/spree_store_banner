module SpreeStoreBanner
  module ApplicationControllerDecorator
    def self.prepended(base)
      base.helper Spree::BannerHelper
    end
  end
end

ApplicationController.prepend(SpreeStoreBanner::ApplicationControllerDecorator)
