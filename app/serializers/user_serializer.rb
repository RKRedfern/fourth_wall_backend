class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :bio, :ghosts, :houses
end