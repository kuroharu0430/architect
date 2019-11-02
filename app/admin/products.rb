ActiveAdmin.register Product do
  config.clear_action_items!

  action_item :my_button1, only: :index do
    link_to "Product new", new_product_path
  end
  action_item :my_button1, only: :index do
    link_to "TOP画面へ", root_path
  end


  index defaults: true do
    column :name
    column :text
    column :image
    column :date
    column :place
    column :purpose
    column :scale
    column :site_area
    column :building_area
    column :architectural_area

  actions defaults: false do |product|
      item ('edit or delete'), edit_product_path(product), class: 'view_link member_link'
      # item ('delete'), product_path(product) ,method: delete, class: 'view_link member_link'
    end

  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :text, :image, :date, :place, :purpose, :scale, :site_area, :building_area, :architectural_area
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :text, :image, :date, :place, :purpose, :scale, :site_area, :building_area, :architectural_area]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  
end
