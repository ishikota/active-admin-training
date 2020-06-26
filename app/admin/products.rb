ActiveAdmin.register Product do
  belongs_to :organization
  navigation_menu :organization
  actions :all, except: [:new, :create, :destroy]
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :organization_id

  form do|f|
    f.semantic_errors
    f.inputs :organization_id
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :organization_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
