#--------------------------------------------------------#
# FILE:   this_joint.rb
# AUTHOR: Dave Perkins
# DATE:   Tuesday, September 18
# DESC:   Starting to turn our attention to live coding!
#--------------------------------------------------------#

use_bpm 75

############
# Bassline #
############

live_loop :bl, sync: :bass_line do
  use_synth :prophet
  use_synth_defaults amp: rrand(1.5, 1.8), cutoff: rrand(115, 125)
  bass_notes = (ring :B2, :A2, :E2, :E3, :E3, :E3, :E3, :E3, :A2, :G2, :D2,
                :D3, :C3, :C3, :C3, :C3, :C3)
  bass_sleep = (ring 0.5, 0.75, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.75, 0.75,
                0.75, 0.25, 0.25, 0.25, 0.25, 0.25)
  play bass_notes.tick(:bass_clock)
  sleep bass_sleep.look(:bass_clock)
end

#########
# Drums #
#########

# Define a few variables as shortcuts:
dbs = :drum_bass_soft
els = :elec_lo_snare
dsh = :drum_snare_hard
dtl = :drum_tom_lo_soft
zzz = :r

live_loop :dl, sync: :drum_line do
  tick :drum_clock
  drum_beat1 = (ring dbs, dbs, zzz, dtl, dbs, els, dtl, dtl)
  drum_beat2 = (ring dbs, dbs, dsh, dtl, dbs, els, dtl, dtl)
  sample drum_beat2.look(:drum_clock)
  sleep 0.25
end

#################
# Control panel #
#################

sleep 1
##| cue :bass_line
sleep 0.25
cue :drum_line




