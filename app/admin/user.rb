ActiveAdmin.register User do
  index do
    column  :email
    column :current_sign_in_at
    default_actions
  end
 
  filter :email

end
