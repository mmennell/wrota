ActiveAdmin.register StaffReview do

 permit_params :staff_id, :shift_id, :overall_rating, :punctuality, :appearance, :professionalism, :work_ethic, :hire_again, :private_comments

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
