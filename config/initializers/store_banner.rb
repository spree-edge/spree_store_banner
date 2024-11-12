Rails.application.config.after_initialize do
  if Spree::Core::Engine.backend_available?
    Rails.application.config.spree_backend.main_menu.add_to_section('promotions',
      ::Spree::Admin::MainMenu::ItemBuilder.new('banners', 
        ::Spree::Core::Engine.routes.url_helpers.admin_banners_path)
        .with_manage_ability_check(::Spree::Banner)
        .with_match_path('/banner')
        .build
    )
  end
end
