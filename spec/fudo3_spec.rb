RSpec.describe Fudo3 do
  describe '.heibei_to_tsubo' do
    it { expect(Fudo3.heibei_to_tsubo(1)).to eq 0.30250001134375043 }
  end

  describe '.heibei_to_jo' do
    it { expect(Fudo3.heibei_to_jo(1)).to eq 0.6037918125830214 }
  end

  describe '.tsubo_to_heibei' do
    it { expect(Fudo3.tsubo_to_heibei(1)).to eq 3.305785 }
  end

  describe '.tsubo_to_jo' do
    it { expect(Fudo3.tsubo_to_jo(1)).to eq 1.9960059171597635 }
  end

  describe '.jo_to_heibei' do
    it { expect(Fudo3.jo_to_heibei(1)).to eq 1.6562 }
  end

  describe '.jo_to_tsubo' do
    it { expect(Fudo3.jo_to_tsubo(1)).to eq 0.5010005187875194 }
  end

  describe '.heibei' do
    it { expect(Fudo3.heibei(1, 1)).to eq 1 }
  end
end
