class BandPassFilter
    def modulate(wave_file:, min_freq: 40, max_freq: 1000)
        wave_file.map! { |note| 
            if note < min_freq 
                note = min_freq
            elsif note > max_freq
                note = max_freq
            else
                note
            end
        }
        wave_file
    end
end

# iterating through array, comparing each number to minimum threshold 
# & raising if necessary