module Spree
  module BaseHelperDecorator
    def banner
      banners = current_store.banners.where(published: true)
      banners.each do |banner|
        @result = banner
      end
      @result
    end
  end
end

::Spree::BaseHelper.prepend ::Spree::BaseHelperDecorator
