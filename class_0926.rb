# ----------------------------------------------------------------- #
# FILE    : class_0926.rb
# AUTHOR  : Jiin Jeong
# DESC    : Intro to external samples and summary of
#           different ways of creating/modifying sound.
#
# To test out, download the music files!
# ----------------------------------------------------------------- #

# ============== PART 1 (Samples) ============== #
# 1. Load external samples. Formats supported (WAV, AIFF or FLAC)
sample "/Users/Jiin/Desktop/queen_bohemian.wav"  # Mac.
# sample "C:/Users/Jiin/Desktop/queen_bohemian.wav"  # Windows.

# 2. Control sample parameters.
# 1) rate: 1.5 (faster, higher pitch), 0.5, -1 (plays backwards)
# 2) attack: 5.0 (fade-in), release: 0.5 (fade-out)
# 3) start: 0-1 (0.5, ..start); finish: 0-1 (0.1, ... end)

# 3. Folder of samples!
# One way:
sample "/Users/Jiin/Desktop/WavFile/", 1  # Index starts from 0!

# Better way:
path = "/Users/Jiin/Desktop/WavFile/"
sample path, 1
# File names work as well!
sample path, "trumpet.wav"

# ============== PART 2 (FX & Sound) ============== #
# 1. FX: Effects (sound processing using digital software).
# Ex: echo, gverb, ixi_techno, octaver, ring_mod, whammy, wobble

with_fx :whammy do
  sample path, 0
end

# 2. Sound Creation & Modification:
# 1) Synth (Synthesizer): Sth that creates sounds (Like a music instrument.)
synth :dsaw
sleep 1

# 2) Sample: Calls prerecorded sounds.
use_synth :beep  # Useless!
sample :ambi_choir
sleep 1

# 3) FX (Effects): Process sounds.
use_synth :blade
with_fx :echo do
  # Your code!
  melody = [:A3, :F3, :D3, :D3, :G3, :A3, :B3]
  beat = [0.5, 0.2, 1.5, 0.5, 0.5, 0.2, 0.2]
  play_pattern_timed melody, beat
end
