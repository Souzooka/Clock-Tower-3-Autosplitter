// State variables are not applicable for emulators
// For read variables, see the "update"/"init" block
state("pcsx2", "null") {}

startup
{
  // Collection of (flagID, splitname, settingsEnabled, description, parent) for events we split on
  vars.Events = new Tuple<int, string, bool, string, string>[]
  {
    Tuple.Create(0x3F2, "bottle_get", false, "Get Holy Water Bottle", "events"),
    Tuple.Create(0x3B8, "london_enter", false, "Enter 1942 London", "events"), // Entering the streets of London
    Tuple.Create(0x46A, "ring_get", false, "Get Wedding Ring", "events"),
    Tuple.Create(0x46B, "ring_use", false, "Use Wedding Ring", "events"),
    Tuple.Create(0x495, "pen_get", false, "Get Golden Pen (not in any%)", "events"),
    Tuple.Create(0x496, "pen_use", false, "Use Golden Pen (not in any%)", "events"),
    Tuple.Create(0x464, "red_drawer_key_get", false, "Get Red Drawer Key", "events"),
    Tuple.Create(0x465, "red_drawer_key_use", false, "Use Red Drawer Key", "events"),
    Tuple.Create(0x45F, "may_room_key_get", false, "Get May's Room Key", "events"),
    Tuple.Create(0x460, "may_room_key_use", false, "Use May's Room Key", "events"),
    Tuple.Create(0x415, "invitation_get", false, "Get Invitation", "events"),
    Tuple.Create(0x466, "master_key_get", false, "Get Master Key", "events"),
    Tuple.Create(0x523, "master_key_use1", false, "Use Master Key (1st time)", "events"),
    Tuple.Create(0x468, "matches_get", false, "Get Matches", "events"),
    Tuple.Create(0x469, "matches_use", false, "Use Matches", "events"),
    Tuple.Create(0x461, "pliers_get", false, "Get Pliers", "events"),
    Tuple.Create(0x548, "master_key_use2", false, "Use Master Key (2nd time)", "events"),
    Tuple.Create(0x463, "pliers_use", false, "Use Pliers", "events"),
    Tuple.Create(0x5AA, "repellent_arrow1_get", false, "Get Repellant Arrow from Chair", "events"),
    Tuple.Create(0x411, "pocket_watch_get", false, "Get Pocket Watch", "events"),
    Tuple.Create(0x3ED, "clover_of_love_get", false, "Get Clover of Love", "events"),
    Tuple.Create(0x489, "dicks_room_key_get", false, "Get Dick's Room Key", "events"),
    Tuple.Create(0x48A, "dicks_room_key_use", false, "Use Dick's Room Key", "events"),
    Tuple.Create(0x483, "winding_key_get", false, "Get Winding Key", "events"),
    Tuple.Create(0x484, "winding_key_use", false, "Use Winding Key", "events"),
    Tuple.Create(0x47A, "kitchen_key_get", false, "Get Kitchen Key", "events"),
    Tuple.Create(0x47B, "kitchen_key_use", false, "Use Kitchen Key", "events"),
    Tuple.Create(0x46E, "dicks_desk_key_get", false, "Get Dick's Desk Key", "events"),
    Tuple.Create(0x46F, "dicks_desk_key_use", false, "Use Dick's Desk Key", "events"),
    Tuple.Create(0x48C, "strange_mask_get", false, "Get Strange Mask", "events"),
    Tuple.Create(0x48D, "strange_mask_use", false, "Use Strange Mask", "events"),
    Tuple.Create(0x5AB, "repellent_arrow2_get", false, "Get Repellant Arrow From Mantle", "events"),
    Tuple.Create(0x48F, "film_get", false, "Get Film", "events"),
    Tuple.Create(0x490, "film_use", false, "Use Film", "events"),
    Tuple.Create(0x56A, "hidden_switch_interact", false, "Interact with Hidden Switch", "events"),
    Tuple.Create(0x480, "toolbox_key_get", false, "Get Toolbox Key", "events"),
    Tuple.Create(0x481, "toolbox_key_use", false, "Use Toolbox Key", "events"),
    Tuple.Create(0x47D, "hex_wrench_get", false, "Get Hex Wrench", "events"),
    Tuple.Create(0x589, "shawl_box", false, "See Shawl in Sewers", "events"),
    Tuple.Create(0x47E, "hex_wrench_use", false, "Use Hex Wrench", "events"),
    Tuple.Create(0x477, "shawl_get", false, "Get Shawl", "events"),
    Tuple.Create(0x3EE, "clover_of_courage_get", false, "Get Clover of Courage", "events"),
    Tuple.Create(0x498, "worker_key_get", false, "Get Worker Key", "events"),
    Tuple.Create(0x499, "worker_key_use", false, "Use Worker Key", "events"),
    Tuple.Create(0x49E, "rubber_gloves_get", false, "Get Rubber Gloves", "events"), // Don't think a use event is set for this one?
    Tuple.Create(0x49C, "crowbar_get", false, "Get Crowbar", "events"),
    Tuple.Create(0x49D, "crowbar_use", false, "Use Crowbar", "events"),
    Tuple.Create(0x4AC, "spectacles_get", false, "Get Spectacles", "events"),
    Tuple.Create(0x4AD, "spectacles_use", false, "Use Spectacles", "events"),
    Tuple.Create(0x49A, "card_key_get", false, "Get Card Key", "events"),
    Tuple.Create(0x49B, "card_key_use", false, "Use Card Key", "events"),
    Tuple.Create(0x5B4, "repellant_arrow3_get", false, "Get Repellant Arrow Under Stairs in Storeroom", "events"),
    Tuple.Create(0x4A6, "earth_rooder_stone_get", false, "Get Earth Rooder Stone", "events"),
    Tuple.Create(0x4A7, "earth_rooder_stone_use", false, "Use Earth Rooder Stone", "events"),
    Tuple.Create(0x4A4, "sky_rooder_stone_get", false, "Get Sky Rooder Stone", "events"),
    Tuple.Create(0x4A5, "sky_rooder_stone_use", false, "Use Sky Rooder Stone", "events"),
    Tuple.Create(0x4A8, "sea_rooder_stone_get", false, "Get Sea Rooder Stone", "events"),
    Tuple.Create(0x5B6, "repellant_arrow4_get", false, "Get Repellant Arrow in Yellow Ghost Hallway", "events"),
    Tuple.Create(0x4A9, "sea_rooder_stone_use", false, "Use Sea Rooder Stone", "events"),
    Tuple.Create(0x5B5, "repellant_arrow5_get", false, "Get Repellant Arrow in the Blue Ghost Hallway", "events"),
    Tuple.Create(0x4AA, "compass_of_light_get", false, "Get Compass of Light", "events"),
    Tuple.Create(0x4A0, "compass_of_shadows_get", false, "Get Compass of Shadows", "events"),
    Tuple.Create(0x4AB, "compass_of_light_use", false, "Use Compass of Light", "events"),
    Tuple.Create(0x4A1, "compass_of_shadows_use", false, "Use Compass of Shadows", "events"),
    Tuple.Create(0x5B9, "old_rooder_arrow_get", false, "Get Old Rooder Arrow", "events"),
    Tuple.Create(0x5B7, "binding_arrow1_get", false, "Get Binding Arrow near Old Rooder Arrow", "events"),
    Tuple.Create(0x3EF, "clover_of_hope_get", false, "Get Clover of Hope", "events"),
    Tuple.Create(0x4C4, "labeled_key_a_get", false, "Get Labeled Key A", "events"),
    Tuple.Create(0x4C8, "looking_glass_get", false, "Get Looking Glass", "events"),
    Tuple.Create(0x4C6, "labeled_key_c_get", false, "Get Labeled Key B", "events"),
    Tuple.Create(0x4CA, "labeled_key_b_get", false, "Get Labeled Key C", "events"),
    Tuple.Create(0x4C7, "labeled_keys_use", false, "Use Labeled Key C", "events"), // Technically use C
    Tuple.Create(0x5EC, "repellant_arrow6_get", false, "Get Repellant Arrow in Castle Foyer", "events"),
    Tuple.Create(0x433, "employee_memo_get", false, "Get Employee Memo", "events"),
    Tuple.Create(0x5EF, "binding_arrow2_get", false, "Get Binding Arrow Behind Staircase in Castle Foyer", "events"),
    Tuple.Create(0x5ED, "repellant_arrow7_get", false, "Get Repellant Arrow Near Right-Side Door in Castle Foyer", "events"),
    Tuple.Create(0x5D8, "steer_bar_interact", false, "Remove Steel Bar Blocking Window", "events"),
    Tuple.Create(0x4D0, "a_crest_get", false, "Get A Crest", "events"),
    Tuple.Create(0x4D1, "a_crest_use", false, "Use A Crest", "events"),
    Tuple.Create(0x4CE, "n_crest_get", false, "Get N Crest", "events"),
    Tuple.Create(0x4CF, "n_crest_use", false, "Use N Crest", "events"),
    Tuple.Create(0x4CC, "d_crest_get", false, "Get D Crest", "events"),
    Tuple.Create(0x4CD, "d_crest_use", false, "Use D Crest", "events"),
    Tuple.Create(0x432, "alyssa_drawings_get", false, "Get Alyssa's Drawings", "events"),
    Tuple.Create(0x5F0, "binding_arrow3_get", false, "Get Binding Arrow in Clock Tower", "events"),
    Tuple.Create(0x5EE, "repellant_arrow8_get", false, "Get Repellant Arrow on Clock Tower Exterior", "events"),
    Tuple.Create(0x3AE, "clock_tower_climbed", false, "Cutscene Before Final Boss", "events"),
    Tuple.Create(0x3E6, "game_end", false, "Game-End Cutscene Begins (End of IGT)", "events")
  };

  vars.Bosses = new Tuple<string, string>[]
  {
    Tuple.Create("sledgehammer_start", "sledgehammer_end"),
    Tuple.Create("corroder_start", "corroder_end"),
    Tuple.Create("chopper1_start", "chopper1_end"),
    Tuple.Create("chopper2_start", "chopper2_end"),
    Tuple.Create("scissorwoman_start", "scissorwoman_end"),
    Tuple.Create("scissorman_start", "scissorman_end"),
    Tuple.Create("grandpa_start", "grandpa_end")
  };

  // SETTINGS
  settings.Add("splits", false, "All Splits");
  settings.Add("bosses", false, "Boss Splits", "splits");
  settings.Add("events", false, "Event Splits", "splits");
  for (int i = 0; i < vars.Bosses.Length; ++i)
  {
    string bossname = vars.Bosses[i].Item1.Substring(0, vars.Bosses[i].Item1.IndexOf("_"));
    bossname = Char.ToUpper(bossname[0]) + bossname.Substring(1);

    string desc = String.Format("Begin {0}", bossname);
    settings.Add(vars.Bosses[i].Item1, false, desc, "bosses");

    desc = String.Format("Defeat {0}", bossname);
    settings.Add(vars.Bosses[i].Item2, false, desc, "bosses");
  }

  // Events
  for (int i = 0; i < vars.Events.Length; ++i)
  {
    settings.Add(vars.Events[i].Item2, vars.Events[i].Item3, vars.Events[i].Item4, vars.Events[i].Item5);
  }
}

init
{
  // Boolean values to check if the split has already been hit
  vars.Splits = new HashSet<string>();

  // Variables for boss death check/split logic
  vars.BossP = new MemoryWatcher<int>((IntPtr)0x2193F78C);
  vars.BossIsActive = false;

  // Event flags
  vars.EventFlagsBuf = new IntPtr(0x21941590);
  vars.VariablesBuf = new IntPtr(0x21941190);
  vars.VariablesOffsetBuf = new IntPtr(0x219440E0);

  // Event flag reading utility fn
  vars.TrigCheckEvent = (Func<int, bool>)(id =>
  {
    IntPtr offset = IntPtr.Add(vars.EventFlagsBuf, id / 8);
    byte eventset = memory.ReadValue<byte>(offset);
    eventset >>= (id % 8);
    return Convert.ToBoolean(eventset & 1);
  });

  // Variable reading utility fn
  vars.TrigGetVariable = (Func<int, bool, int, int>)((id, b, id2) => 
  {
    if (b)
    {
      // Access VariablesBuf[id]
      return memory.ReadValue<int>((IntPtr)IntPtr.Add(vars.VariablesBuf, id * 4));
    }

    IntPtr offset = IntPtr.Add(vars.VariablesOffsetBuf, id2 * 4);
    offset = (IntPtr)memory.ReadValue<int>(offset);
    return memory.ReadValue<int>((IntPtr)IntPtr.Add(offset, id * 4 + 0x20000000));
  });

  vars.BossCheckHealth = (Func<int>)(() => vars.TrigGetVariable(8, false, 4));

  // The game does some weird things with each boss, like overwiting the health variable with
  // something else almost immediately after the boss dies
  // In order to prevent double-splits I've created this function to return a unique ID
  // for any active boss, and as any one boss can't die multiple times it works out
  vars.GetBossIdx = (Func<int>)(() =>
  {
    int bossID;
    IntPtr bossPtr = IntPtr.Zero;

    // Iterate over all character identities to find one with active enemy AI
    // (this seems to be what the game is doing...)
    for (int i = 0; i < 33; ++i)
    {
      bossPtr = (IntPtr)memory.ReadValue<int>((IntPtr)(0x21A4BFC0 + (i * 0x580) + 0xFC));
      if (bossPtr != IntPtr.Zero)
        break;
    }

    if (bossPtr == IntPtr.Zero)
      return -1;

    // Read the enemy ID value then do some shenanighans to get it to line up with the
    // indexes in our boss arrays (there are ghosts included in enemy types)
    bossID = memory.ReadValue<byte>(IntPtr.Add(bossPtr, 0x20000235));

    switch (bossID)
    {
      case 4:
        return 0; // Sledgehammer
      case 5:
        return 1; // Corroder
      case 6:
        if (vars.TrigCheckEvent(0x774)) // Check if player has visited cemetary
          return 3; // Axeman 2
        else
          return -1;
      case 7:
        return 4; // Scissorwoman
      case 8:
        return 5; // Scissorman
      case 10:
        return 6; // Grandpa
      default:
        return -1; // Oops, all ghosts
    }
  });

  // For game time
  vars.FramesPerSecond = 30.0f;
  vars.GameTimeFrames = new MemoryWatcher<int>((IntPtr)0x2193FA1C);
  vars.ResetCheckWatch = new Stopwatch();

  vars.Watchers = new MemoryWatcherList
  {
    vars.GameTimeFrames,
    vars.BossP
  };
}

start
{
  // IGT is incremented once before the first FMV plays, so we just use that
  return vars.GameTimeFrames.Current == 1 && vars.GameTimeFrames.Old == 0;
}

reset
{
  // Upon getting a game over, the game backs up IGT at the time the Game Over
  // menu completely fades in in a separate variable. Upon continuing, the game
  // zeroes out IGT for a few frames (because why not?) before restoring IGT.
  // The game does not zero out the backup variable when returning to the title menu.
  // This makes determining if the game has ended by evaluating IGT or its backup impossible.
  // We get around this by use of a Stopwatch; if IGT is 0 and .5 seconds later it's still 0,
  // then we have to be in the title menu.

  if (vars.GameTimeFrames.Current == 0 && vars.GameTimeFrames.Old > 0)
  {
    vars.ResetCheckWatch.Start();
  }

  if (vars.ResetCheckWatch.ElapsedMilliseconds >= 500)
  {
    vars.ResetCheckWatch.Reset();
    return vars.GameTimeFrames.Current == 0;
  }
}

update
{
  // Update memory watchers
  vars.Watchers.UpdateAll(game);

  // Whenever timer is paused, clear all the splits
  if (timer.CurrentPhase == TimerPhase.NotRunning) 
  { 
    vars.Splits.Clear(); 
    vars.BossIsActive = false;
  }
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
  /* 
    Handle boss death events

    So, bosses were more of a PITA than I was expecting.
    There is some sort of global variable system the game manages
    in which it does put boss health and which we check.
    However, the game likes to fill that variable with junk quickly after a boss fight.

    There is a pointer to boss AI information, which is represented by BossP.
    In some cases when the enemy HP is set to 0, the AI is deallocated immediately.
    This is why we have a vars.BossIsActive variable which is set once a boss AI is made
    and the enemy's health is set.

    Chopper 1 is a weird case in that Chopper does not actually die, but winning causes a
    cutscene to immediately play. When the cutscene plays, all information about Chopper 1
    is deallocated. Since Chopper 1 is a unique case, we assume that Chopper 1 has been defeated
    if we get a -1 result when trying to determine which boss was active upon death.
  */
  if (vars.BossP.Current != 0 || vars.BossIsActive)
  {
    if (!vars.BossIsActive && vars.BossCheckHealth() > 0)
    {
      // Detected an alive boss
      vars.BossIsActive = true;
      int bossIdx = vars.GetBossIdx();
      string split = vars.Bosses[bossIdx].Item1;
      if (!vars.Splits.Contains(split))
      {
        vars.Splits.Add(split);
        print("DEBUG: Split on boss start event: " + split);
        return true;
      }
    }


    if (vars.BossP.Current == 0 || (vars.BossIsActive && vars.BossCheckHealth() <= 0))
    {
      // Boss is dead
      vars.BossIsActive = false;
      int bossIdx = vars.GetBossIdx();
      // Chopper 1 is a weird case in which a cutscene plays immediately after playing
      // If the boss doesn't exist after winning (e.g. in a case their health never actually reaches 0)
      // we assume the boss was Chopper 1
      string split = bossIdx != -1 ? vars.Bosses[bossIdx].Item2 : "chopper1_end";
      if (!vars.Splits.Contains(split))
      {
        vars.Splits.Add(split);
        print("DEBUG: Split on boss end event: " + split);
        return true;
      }
    }
  }

  // Handle most events: cutscenes, item get/use, entering rooms, etc.
  foreach (var eventInfo in vars.Events)
  {
    if (!vars.Splits.Contains(eventInfo.Item2))
    {
      if (vars.TrigCheckEvent(eventInfo.Item1))
      {
        vars.Splits.Add(eventInfo.Item2);
        print("DEBUG: Split on event: " + eventInfo.Item2);
        return true;
      }
    }
  }


  return false;
}