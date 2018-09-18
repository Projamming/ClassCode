# Warmup for Tuesday, September 18

# Which loop (soprano or alto) plays first, and how many notes
# play in that loop before the other part begins to play?

use_synth :piano

live_loop :p1, sync: :soprano do
  tick :soprano_clock
  soprano_part = (ring :C5, :D5, :E5, :D5)
  play soprano_part.look(:soprano_clock)
  sleep 0.5
end

live_loop :p2 do
  6.times do
    tick :alto_clock
    alto_part = (ring :E3, :C3)
    play alto_part.look(:alto_clock)
    sleep 1
  end
  cue :soprano
end
