ActiveAdmin.register Author do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :genre
  actions :all, except: [:destroy]

  # Adding this limits the form to only include the fields we specify below
  # It uses an ActiveAdmin DSL to manipulate a Formtastic form.
  # Removing this bit of code returns the form to the default
  form do |f|
    inputs 'Author' do
      f.input :name
      f.input :genre
    end
    f.semantic_errors
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


end
