# Warmup for Tuesday, September 25
# Inspired by jazzyjay's question in Practice!
# In your own words, what does this code accomplish?

use_random_seed 105

tom = :drum_tom_lo_hard
bass = :drum_bass_hard
zzz = :r

drums_1 = (ring bass, bass, tom, zzz, bass, bass, tom, zzz)
drums_2 = (ring tom, zzz, bass, tom, zzz, bass, zzz, tom)

loop do
  # This statement rolls a 2-sided die (i.e. flips a coin!):
  random_number = dice(2)
  
  use_this = drums_1 if random_number == 1
  use_this = drums_2 if random_number == 2
  
  8.times do
    sample use_this.tick
    sleep 0.25
  end
  
end
