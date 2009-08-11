class AccountAccess < Lipsiadmin::AccessControl::Base 

  roles_for :administrator do |role, current_account|
    # Shared Permission
    role.allow_all_actions "/backend"
    role.allow_all_actions "/backend/base"
    
    # Remember that it will try to translate the menu in your current
    # locale
    # 
    #   # Look for: I18n.t("backend.menus.account") in /config/locales/backend/yourlocale.yml
    #   project_module :account
    #   # Look for: I18n.t("backend.menus.list") in /config/locales/backend/yourlocale.yml
    #   project.menu :list
    # 
    # It not necessary have a translation you can provide a classic strings like:
    # 
    #   role.project_module "My Menu Name"
    # 
    # <tt>current_account</tt> is an instance of current logged account
    # 
    role.project_module :account do |project|
      project.menu :list,   "/backend/accounts.js" do |submenu|
        submenu.add :new, "/backend/accounts/new"
      end
    end
    
    # Please don't remove this comment! It's used for auto adding project modules
    role.project_module :hard_back_covers do |project|
      project.menu :list,   "/backend/hard_back_covers.js" do |submenu|
        submenu.add :new, "/backend/hard_back_covers/new"
      end
    end 

    role.project_module :hard_cover_materials do |project|
      project.menu :list,   "/backend/hard_cover_materials.js" do |submenu|
        submenu.add :new, "/backend/hard_cover_materials/new"
      end
    end 

    role.project_module :binds do |project|
      project.menu :list,   "/backend/binds.js" do |submenu|
        submenu.add :new, "/backend/binds/new"
      end
    end 

    role.project_module :staplings do |project|
      project.menu :list,   "/backend/staplings.js" do |submenu|
        submenu.add :new, "/backend/staplings/new"
      end
    end 

    role.project_module :foldings do |project|
      project.menu :list,   "/backend/foldings.js" do |submenu|
        submenu.add :new, "/backend/foldings/new"
      end
    end 

    role.project_module :colors do |project|
      project.menu :list,   "/backend/colors.js" do |submenu|
        submenu.add :new, "/backend/colors/new"
      end
    end 

    role.project_module :papertypes do |project|
      project.menu :list,   "/backend/papertypes.js" do |submenu|
        submenu.add :new, "/backend/papertypes/new"
      end
    end 

    role.project_module :pagesizes do |project|
      project.menu :list,   "/backend/pagesizes.js" do |submenu|
        submenu.add :new, "/backend/pagesizes/new"
      end
    end 

  end
  
  
end