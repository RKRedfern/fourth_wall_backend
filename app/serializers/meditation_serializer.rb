class MeditationSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :kind, :duration, :notes, :user_id
end