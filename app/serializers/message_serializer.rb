class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  belongs_to :user 
end
