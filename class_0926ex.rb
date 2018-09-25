# ----------------------------------------------------------------- #
# FILE    : class_0926ex.rb
# AUTHOR  : Jiin Jeong
# DESC    : First two mama melodies in Bohemian Rhapsody.
#           (Could be synced better :/)
#           Download file!
# ----------------------------------------------------------------- #

live_loop :voice do
  in_thread do
    sample "C:/Users/Jiin/Desktop/queen_bohemian.wav"  # For Mac, don't put C:
  end
  
  kick = :drum_heavy_kick
  drum = :drum_bass_hard
  cymbal = :drum_cymbal_pedal
  
  in_thread do
    loop do
      use_bpm 69
      drums = (ring kick, drum, cymbal, drum,
               drum, drum)
      drums_sleep = (ring 0.5, 0.5, 0.5, 0.5,
                     0.45, 0.45)
      sample drums.look
      sleep drums_sleep.look
    end
  end
  
  loop do
    use_bpm 66
    use_synth :piano
    
    # You can use chords in a list/ring as well!
    intro = [chord(:G4, :minor), :G4, :Bb4, :D5, :G5, :F5,
             chord(:G4, :minor), :G4, :Bb4, :D5, :A5, :G5,
             chord(:C4, :minor), :C5, :Eb5, :G5, :D6, :C6]
    connection = [chord(:C4, :minor), :C5, :Eb5, :G5,
                  chord(:F4, :major), :Eb5, :F5, :C6]
    
    intro_dur = (ring 0.5, 0.5, 0.5, 0.5, 0.9, 0.9)
    connection_dur = (ring 0.5)
    
    play_pattern_timed intro, intro_dur
    play_pattern_timed connection, connection_dur
  end
end
