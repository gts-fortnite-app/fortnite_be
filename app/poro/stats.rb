class Stats
    attr_reader :name, :battle_pass_level, :battle_pass_progress, :id, :overall, :solo, :duo, :squad

  def initialize(data)
    @name = data[:data][:account][:name]
    @battle_pass_level = data[:data][:battlePass][:level]
    @battle_pass_progress = data[:data][:battlePass][:progress]
    @overall = data[:data][:stats][:all][:overall]
    @solo = data[:data][:stats][:all][:solo]
    @duo = data[:data][:stats][:all][:duo]
    @squad = data[:data][:stats][:all][:squad]
    @id = data[:data][:account][:id]
  end
end
