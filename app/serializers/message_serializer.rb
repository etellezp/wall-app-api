class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attribute :content
  belongs_to :user
end
