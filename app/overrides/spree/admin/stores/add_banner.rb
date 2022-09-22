Deface::Override.new(
  virtual_path: 'spree/admin/stores/_form',
  name: 'add banner',
  insert_after: "[data-hook='admin_store_form_fields']",
  text: "
        <div class='card mb-4'>
          <div class='card-header'>
            <h1 class='card-title mb-0 h5'>
              <%= Spree.t(:banner) %>
            </h1>
          </div>
          <div class='card-body'>
            <div class='alert alert-warning col-12'>
              <%= Spree.t('store_form.If you want to link your banner in index page') %>
            </div>
            <%= f.field_container :banner_text do %>
              <%= f.label :banner, Spree.t(:banner_text) %> <br>       
                <%= f.text_area :banner_text, class: 'form-control spree-rte'%>     
              <%= f.error_message_on :banner_text %>
            <% end %>
            
            <%= f.field_container :banner_color do %>
              <%= f.label :banner, Spree.t(:banner_color) %> <br>       
                <%= f.text_field :banner_color, class: 'form-control'%>     
              <%= f.error_message_on :banner_color %>
            <% end %>
            
            <%= f.field_container :banner do %> 
              <div class='text-center'>                     
                <%= f.check_box :banner, class: 'form-check-input'%> 
                <%= f.label :banner, Spree.t(:Add_to_home_page), class:'form-check-label' %>    
                <%= f.error_message_on :banner %>
              </div>
            <% end %>
          </div>
        </div>"

)
