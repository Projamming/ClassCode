# Warmup for Thursday, September 6
# Which synth will be used in the second loop: piano or fm?

use_synth :piano
use_bpm 110

in_thread do
  loop do
    use_synth :fm
    use_synth_defaults ## sustain: 2
    some_notes = [:r, :E2, :E2, :E2, :C2, :E2, :C2]
    some_sleep = [0.25, 1, 1, 0, 1, 0, 0.75]
    play_pattern_timed some_notes, some_sleep, sustain: 0.3
  end
end

loop do
  other_notes = [:E2, :E2, :E2, :E2, :G2, :E2, :A2]
  other_sleep = [0.25, 0.25, 0.25, 0.5, 0.5, 0.25, 2]
  play_pattern_timed other_notes, other_sleep, amp: 0.3
end
