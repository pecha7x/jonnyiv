ActiveAdmin.register User do
  actions :index, :show

  index do
    column :id
    column :email
    column :referral_code
    column "Referrer User" do | user |
      user.referrer.blank? ? '' : user.referrer.email
    end
    column "Invited Users" do | user |
      User.where(referrer_id: user.id).order('created_at').map{|u| u.email }.join('<br />').html_safe
    end
    column "Invited Count" do | user |
      User.where(referrer_id: user.id).size
    end
    column :created_at
    column :updated_at
    default_actions
  end

  show do |ad|
    attributes_table do
      row :id
      row :email
      row :referral_code
      row "Referrer User" do | user |
        user.referrer.blank? ? '' : user.referrer.email
      end
      row "Invited Users" do | user |
        User.where(referrer_id: user.id).order('created_at').map{|u| u.email }.join('<br />').html_safe
      end
      row "Invited Count" do | user |
        User.where(referrer_id: user.id).size
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  csv :force_quotes => true do
    column :id
    column :email
    column :referral_code
    column "Referrer User" do | user |
      user.referrer.blank? ? '' : user.referrer.email
    end
    column "Invited Users IDs" do | user |
      User.where(referrer_id: user.id).order('created_at').map{|u| u.id }.join(', ').html_safe
    end
    column "Invited Count" do | user |
      User.where(referrer_id: user.id).size
    end
    column :created_at
    column :updated_at
  end
end
