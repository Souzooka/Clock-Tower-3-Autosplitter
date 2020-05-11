// State variables are not applicate for emulators
// For read variables, see the "update"/"init" block
state("pcsx2", "null") {}

startup
{

}

init
{
  // Boolean values to check if the split has already been hit
  vars.Splits = new HashSet<string>();

  // For game time
  vars.FramesPerSecond = 30.0f;
  vars.GameTimeFrames = new MemoryWatcher<int>((IntPtr)0x2193FA1C);

  vars.Watchers = new MemoryWatcherList
  {
    vars.GameTimeFrames
  };
}

update
{
  // Update memory watchers
  vars.Watchers.UpdateAll(game);

  // Whenever timer is paused, clear all the splits;
  if (timer.CurrentPhase == TimerPhase.NotRunning) { vars.Splits.Clear(); }
}

// Prevents the in-game timer from increasing on its own (it's synced to the game's time value)
isLoading 
{ 
  return true; 
}

gameTime 
{ 
  return TimeSpan.FromSeconds(vars.GameTimeFrames.Current / vars.FramesPerSecond); 
}

split
{
  return false;
}