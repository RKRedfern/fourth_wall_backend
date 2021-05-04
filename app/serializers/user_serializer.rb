class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :password, :bio
end