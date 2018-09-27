# Warmup for class Thursday, September 27

# What one line could we change while live-coding in
# order to switch from one drum line to the other? And
# how would we change it?

snr = :drum_snare_soft
bss = :drum_bass_hard

define :drum1 do
  6.times do
    beats = (ring snr, snr, bss, snr, snr, bss)
    sample beats.tick
    sleep 0.25
  end
end

define :drum2 do
  6.times do
    beats = (ring bss, bss, snr, bss, bss, snr)
    sample beats.tick
    sleep 0.25
  end
end

live_loop :control do
  controller = 1
  drum1 if controller == 1
  drum2 if controller == 2
end
