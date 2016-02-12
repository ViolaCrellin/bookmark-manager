class Link

  include DataMapper::Resource

  has n, :tags, through: Resource
  belongs_to :user, key => true
  # belongs_to :tag, key => true

  property :id, Serial
  property :title, String
  property :url, String
  property :tag, String
  # property :user, User

end
