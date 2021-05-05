class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :password_digest, :bio, :ghosts, :houses
end