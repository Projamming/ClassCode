# Warmup for Thursday, September 20
# Describe what this code does in one sentence. You don't have to go into detail.

use_bpm 30
d1 = :drum_bass_hard
d2 = :drum_snare_hard
r = (ring 0, 1, 1)

live_loop :warmup do
  
  tick(:rc)
  
  if r.look(:rc) == 0
    a = (ring 1, 1, 0, 1, 1, 1, 2, 0)
    num_beats = 8
  end
  if r.look(:rc) == 1
    a = (ring 1, 1, 1, 0, 1, 1, 2, 0, 1, 2, 1, 2)
    num_beats = 12
  end
  
  num_beats.times do
    
    tick(:bc)
    sample d1 if a.look(:bc) == 1
    sample d2 if a.look(:bc) == 2
    
    sleep 0.25
    
  end
  
end
