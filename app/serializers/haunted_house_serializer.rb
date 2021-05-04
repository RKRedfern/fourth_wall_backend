class MeditationSerializer
    include FastJsonapi::ObjectSerializer
    attributes :location, :kind, :notes, :user_id
end