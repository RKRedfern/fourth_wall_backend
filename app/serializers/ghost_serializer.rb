class MeditationSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :kind, :notes, :user_id
end