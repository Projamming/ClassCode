# --------------------------------------------------- #
# FILE: 09_27_chord_progression.rb
# DATE: September 27, 2018
# AUTH: Dave Perkins
# DESC: For class. Illustrates using indexing in a list
#       as well as chord families. See Piazza for chord
#       resources we used to pick these chords!
# --------------------------------------------------- #

chord_prog = [chord(:C4, :major),
              chord(:A4, :minor),
              chord(:D4, :major),
              chord(:Fs4, :dim)
              ]

use_synth :piano

live_loop :my_chords do
  
  # This code replaces the code commented out below.
  # We made a ring that contains the index numbers
  # (the plural of index is indices) that will refer
  # to the chords in the chord_prog list above:
  
  # All that .reverse does is reverse the order of the
  # indices in this ring. The code here is completely
  # equivalent to: calling = (ring 0, 2, 3, 1)
  
  calling = (ring 1, 3, 2, 0).reverse
  
  # Now we tick a clock that will let us step through
  # the calling ring, and reference the chords in our
  # chord_prog one at a time:
  
  tick
  
  # This plays the chords a note at a time, up the scale
  # and then reversed back down the scale:
  
  play_pattern_timed chord_prog[calling.look], 0.2
  play_pattern_timed chord_prog[calling.look].reverse, 0.2
  
  # We do not need this sleep command because the 0.2s
  # in the lines above are implied sleeps:
  
  ##| sleep 0
  
  # We originally wrote this code to play through the
  # chord family in a specific order, but we replaced it
  # with the code shown above:
  
  ##| play chord_prog[0]
  ##| sleep 1
  ##| play chord_prog[2]
  ##| sleep 1
  ##| play chord_prog[3]
  ##| sleep 1
  ##| play chord_prog[1]
  ##| sleep 1
end
