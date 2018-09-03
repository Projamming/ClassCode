# In-class work for Thursday, August 30

use_bpm 120

define :metronome do
  live_loop :metro do
    sample :elec_flip
    sleep 1
  end
end

define :melody do
  live_loop :mel do
    
    use_synth :blade
    
    my_notes =     [:C3, :r, :D3, :E3, :r, :C3,
                    :E3, :C3, :E3, :r]
    
    my_durations = [1, 0.5, 0.5, 1, 0.5, 0.5,
                    1, 1, 1, 1]
    
    play_pattern_timed my_notes, my_durations
  end
end

define :harmony do
  live_loop :har do
    
    use_synth :piano
    
    my_notes =     [:E3, :r, :F3, :G3, :r, :E3,
                    :G3]
    
    my_durations = [1, 0.5, 0.5, 1, 0.5, 0.5,
                    4]
    
    play_pattern_timed my_notes, my_durations
    
  end
end

# Control panel:
live_loop :control do
  
  metronome
  melody
  harmony
  
  # This sleep doesn't affect anything, but I
  # need it so Sonic Pi doesn't whine:
  sleep 1
end
