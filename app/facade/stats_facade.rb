class StatsFacade

  def self.player_stats(name)
    player_stats = StatsService.get_player_stats_by_name(name)
    Stats.new(player_stats)
  end
end