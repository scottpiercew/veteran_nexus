class CreateCategoriesService
  def call
    %w{Education Advocacy Social Political Health Fraternal}.each do |category|
      Category.where(name: category).first_or_create
    end
  end
end
