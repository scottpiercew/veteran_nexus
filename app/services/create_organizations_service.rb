class CreateOrganizationsService
  def call
    # Load yml file
    organizations_seed_file = File.join(Rails.root, "db/seeds/organizations/organizations.yml")
    organizations_seed = YAML::load_file(organizations_seed_file)
    # Create Organizations
    organizations = organizations_seed['organizations']
    organizations.each do |organization|
      newly_created_organization = Organization.create do |new_org|
        new_org.name = organization['name']
        new_org.description = organization['description']
        new_org.photo_url = organization['photo_url']
        new_org.location = organization['location']
        new_org.facebook = organization['facebook']
        new_org.twitter = organization['twitter']
        new_org.instagram = organization['instagram']
        new_org.linkedin = organization['linkedin']
        new_org.youtube = organization['youtube']
        new_org.web_url = organization['web_url']
        category = Category.find_by_name(organization['category'])
        new_org.save!(:validate => false)
        new_org.categories << category if category.present?
        p "************** Created Organization: #{new_org.name}"
      end
    end
  end
end
