ActiveAdmin.register User do
  actions :index, :show, :edit, :update
  permit_params :email, :username
  index do
    selectable_column
    id_column
    column :email
    column :username
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :username
      row :email
      row :created_at
    end
  end

  form do
  |f|
    f.inputs do
      f.input :email
      f.input :username
    end
    f.actions
  end
end
