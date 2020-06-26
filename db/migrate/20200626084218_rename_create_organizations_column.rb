class RenameCreateOrganizationsColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :organizations, :CreateOrganizations, :name
  end
end
