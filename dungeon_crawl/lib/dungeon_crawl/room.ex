defmodule DungeonCrawl.Room do
  import DungeonCrawl.Room.Action

  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers

  defstruct description: nil, actions: [], trigger: nil

  def all,
    do: [
      %Room{
        description: "You can see the light of day. You found the exit!",
        actions: [forward()],
        trigger: Triggers.Exit
      }
    ]
end
