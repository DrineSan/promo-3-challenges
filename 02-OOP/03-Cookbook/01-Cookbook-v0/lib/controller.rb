class Controller

  def initialize
    @cookbook_repository = Cook_Repository.new
    @display = Display.new
  end

  def fetch_and_print_display
      @display.print_recipes(@csv_tempo)
    end

end