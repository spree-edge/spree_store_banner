# frozen_string_literal: true

module SpreeBanner
  module StoreControllerDecorator
    def self.included(base)
      base.include ::Spree::BaseHelper

      base.helper 'spree/banner'
    end
  end
end

::Spree::StoreController.include(::SpreeBanner::StoreControllerDecorator) if defined?(Spree::StoreController)
