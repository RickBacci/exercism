module ResistorColorDuo

  COLORS = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white"
  ].freeze

  def self.color_code(color)
    COLORS.index(color)
  end

  def self.value(colors)
    colors[0..1].map { |color| color_code(color) }.join.to_i
  end

end

