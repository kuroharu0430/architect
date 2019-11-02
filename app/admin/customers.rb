ActiveAdmin.register Customer do
  permit_params :state

  config.clear_action_items!

  action_item :my_button1, only: :index do
    link_to "TOP画面へ", root_path
  end


  form do |f|
    f.inputs '登録' do
      f.input :state
      end
      f.actions
  end

  index do
    column :id
    column :name
    column :email
    column :state

    actions defaults: true do |customer|
      item ('message'), customer_messages_path(customer), class: 'view_link member_link'
    end

  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :encrypted_password, :state, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :encrypted_password, :state, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
