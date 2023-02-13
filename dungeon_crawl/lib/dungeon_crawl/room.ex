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
      },
      %Room{
        description: "You can see an enemy blocking your path.",
        actions: [forward()],
        trigger: Triggers.Enemy
      },
      %Room{
        description: "You have a surprise in your path.",
        actions: [forward()],
        trigger: Triggers.Trap
      },
      %Room{
        description: "You can see a box in your path.",
        actions: [forward()],
        trigger: Triggers.Treasure
      },
      %Room{
        description: "You can't see an enemy blocking your path.",
        actions: [forward()],
        trigger: Triggers.EnemyHidden
      },
      %Room{
        description: "You can see an oasis in your path.",
        actions: [forward()],
        trigger: Triggers.Rest
      }
    ]
end
