defmodule DungeonCrawl.Room.Triggers.Enemy do
  @behaviour DungeonCrawl.Room.Trigger

  alias DungeonCrawl.Room.Action
  alias Mix.Shell.IO, as: Shell

  def run(character, %Action{id: :forward}) do
    enemy = Enum.random(DungeonCrawl.Enemies.all())

    Shell.info(enemy.description)
    Shell.info("The enemy #{enemy.name} wants to fight.")
    Shell.info("You were prepared and attack first.")

    {updated_character, _enemy} = DungeonCrawl.Battle.fight(character, enemy)

    {updated_character, :forward}
  end
end
