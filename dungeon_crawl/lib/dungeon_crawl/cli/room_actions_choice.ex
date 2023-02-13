defmodule DungeonCrawl.CLI.RoomActionsChoice do
  import DungeonCrawl.CLI.BaseCommands

  alias Mix.Shell.IO, as: Shell

  def start(room) do
    Shell.info(room.description)
    chosen_action = ask_for_option(room.actions)

    {room, chosen_action}
  end
end
