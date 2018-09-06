# In-class code for Thursday, September 6
# Introduction to conditionals (if statements)
#  and sync / cue.

use_synth :piano

live_loop :drums do
  # Play through the drum part twice before
  #  cueing the cowbell part:
  16.times do
    tick
    beat = (ring 2, 2, 2, 0, 2, 0, 0, 2)
    play :C4
    sample :drum_bass_hard if beat.look == 2
    sample :drum_snare_soft if beat.look == 0
    sleep 0.25
  end
  cue :cowbell
end

live_loop :bells, sync: :cowbell do
  tick
  bell_beat = (ring 1, 1, 0, 1, 0, 0, 0, 0)
  sample :drum_cowbell, amp: 0.4 if bell_beat.look == 1
  sleep 0.25
end
