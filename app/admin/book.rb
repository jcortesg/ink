ActiveAdmin.register Book do
  
  index do
    column :name
    column :localitation
    default_actions
  end

  filter :name
end
