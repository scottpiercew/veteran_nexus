class AddDescriptionToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :description, :text
  end
end
