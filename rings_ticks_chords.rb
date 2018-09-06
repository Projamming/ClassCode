# In class on Tuesday, September 5
# Introduction to rings, tick/look, and playing chords

use_synth :pluck

my_amps = (ring 0.5, 1.0, 1.5, 2.0)

##| loop do
##|   tick
##|   print "amp:", my_amps.look
##|   play :C3, amp: my_amps.look
##|   sleep 0.5
##| end

my_notes = (ring :C3, :D3, :E3, :r)
my_chords = (ring chord(:C3, :major),
             chord(:C3, :minor))
my_sleeps = (ring 0.5, 1)

loop do
  tick
  play my_chords.look, amp: my_amps.look
  sleep my_sleeps.look
end
