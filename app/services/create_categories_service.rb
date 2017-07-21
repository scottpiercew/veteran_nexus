class CreateCategoriesService
  def call
    %w{Social Education Political Health Disaster-Relief}.each do |category|
      Category.where(name: category).first_or_create
    end
  end
end
