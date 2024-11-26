module SpreeStoreBanner
  module StoreDecorator
    def self.prepended(base)
      base.has_many :banners
    end
  end
end

Spree::Store.prepend SpreeStoreBanner::StoreDecorator
