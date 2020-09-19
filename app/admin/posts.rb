ActiveAdmin.register Post do
  permit_params :title, :content, :auther, :date

  show do
    render partial: 'resources/show'
  end

  form do |f|
    f.inputs 'Article' do
      f.input :title
      f.input :content, as: :froala_editor
      f.input :auther
      f.input :date
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :content, :auther, :date
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :auther, :date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
