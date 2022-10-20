Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name: 'add banner',
  insert_after: "[data-hook='body']",
  replace: "erb[loud]:contains('spree/shared/get_started')",
  partial: "spree/shared/banner"
)
