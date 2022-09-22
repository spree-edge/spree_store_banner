Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name: 'add banner text',
  insert_top: "[data-hook='body']",
  text: "
  <h5 class='text-center'><%= current_store.banner_text.gsub(/<[^>]*>/,'')%></h5>
")
