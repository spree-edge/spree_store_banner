# frozen_string_literal: true

module SpreeStoreBanner
  module StoreControllerDecorator
    def self.included(base)
      base.include ::Spree::BaseHelper

    end
  end
end

::Spree::StoreController.include(::SpreeStoreBanner::StoreControllerDecorator) if defined?(Spree::StoreController)
