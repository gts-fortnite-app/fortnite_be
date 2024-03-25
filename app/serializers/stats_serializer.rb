class StatsSerializer
  include JSONAPI::Serializer
  attributes :name, :battle_pass_level, :battle_pass_progress, :overall, :solo, :duo, :squad
end
