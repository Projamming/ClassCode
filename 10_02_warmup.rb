# Warmup for Tuesday, October 2

# How many (if any!) of the chords in the chord_prog list
# will play when I run this code and let the live_loop complete?

use_bpm 80

chord_prog = [chord(:C4, :major),
              chord(:G4, :major),
              chord(:D4, :sus4),
              chord(:E4, :minor7),
              chord(:C4, :add9),
              chord(:B3, :minor7),
              chord(:Bb3, :major)
              ]

use_synth :blade
calling = (ring 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 5, 6, 0, 0)

live_loop :my_chords do
  
  tick
  play chord_prog[calling.look], sustain: 1.25
  sleep 2
end
