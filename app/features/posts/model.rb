Pakyow::App.model :post do
  attribute :slug, Slug
  attribute :title, String
  attribute :body, Content

  build :slug do |input|
    # used if not passed as input
    slugify(input[:title])
  end
  
  validate :slug, :unique
  
  action :create, required: [:name, :body]
  action :update, optional: [:name, :body]
end
