FISHES = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus
  max_len = 0
  fishes = FISHES.map(&:length)
  (0...fishes.length - 1).each do |idx1|
    (1...fishes.length).each do |idx2|
      len = [fishes[idx1], fishes[idx2]].max
      max_len = len if len > max_len
    end
  end
  p FISHES[fishes.index(max_len)]
end
sluggish_octopus

def dominant_octopus
  
end