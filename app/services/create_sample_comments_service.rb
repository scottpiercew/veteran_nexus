class CreateSampleCommentsService
  def call
    # Load yml file
    comments_seed_file = File.join(Rails.root, "db/seeds/comments/comments.yml")
    comments_seed = YAML::load_file(comments_seed_file)
    # Create Organizations
    comments = comments_seed['comments']
    comments.each do |comment|
      newly_created_comment = Comment.create do |new_comment|
        new_comment.name = comment['name']
        new_comment.body = comment['body']
        new_comment.save!(:validate => false)

        organization = Organization.find_by_name(comment['organization'])
        organization.comments << new_comment if organization.present?
        p "************** Created Comment: #{new_comment.name}"
      end
    end
  end
end
