Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name: 'add banner',
  remove: "erb[loud]:contains('spree/shared/get_started')",
)
