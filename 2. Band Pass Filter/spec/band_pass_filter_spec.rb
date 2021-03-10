require 'band_pass_filter'

describe BandPassFilter do
    it 'modulates notes up to the minimum frequency' do
        expect(subject.modulate(wave_file: [10])).to eq [40]
    end

    it 'modulates notes up to the min frequency but leaves others unchanged' do
        expect(subject.modulate(wave_file: [10, 50])).to eq [40, 50]
    end

    it 'modulates notes up to min freq set by artist but leaves others unchanged' do
        expect(subject.modulate(wave_file: [10, 50], min_freq: 30)).to eq [30, 50]
    end

    it 'modulates notes down to the max frequency' do
        expect(subject.modulate(wave_file: [1500])).to eq [1000]
    end

    it 'modulates notes down to the max frequency but leaves others unchanged' do
        expect(subject.modulate(wave_file: [60,10,45,60,1500])).to eq [60,40,45,60,1000]
    end

    it 'modulates notes down to max freq set by artist but leaves others unchanged' do
        expect(subject.modulate(wave_file: [60,10,45,60,1500], max_freq: 1200)).to eq [60,40,45,60,1200]
    end

    it 'modulates notes to within max and min frequencies set by artist' do
        expect(subject.modulate(wave_file: [60,10,45,60,1500], min_freq: 20, max_freq: 1200)).to eq [60,20,45,60,1200]
    end
end