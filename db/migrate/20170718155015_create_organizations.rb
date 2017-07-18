class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :org_type
      t.string :photo_url
      t.string :location
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :linkedin
      t.string :youtube
      t.string :web_url

      t.timestamps
    end
  end
end
