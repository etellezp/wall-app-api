class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email

  attribute :messages do |object|
    object.messages.as_json
  end

  has_many :messages, serializer: :MessageSerializer
end
