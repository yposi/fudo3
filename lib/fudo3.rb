require "fudo3/version"

module Fudo3
  class Error < StandardError; end

  TSUBO_BASE = 3.305785
  JO_BASE = 1.6562

  # 平米 → 坪 変換
  def self.heibei_to_tsubo(heibei)
    heibei / TSUBO_BASE
  end

  # 平米 → 畳 変換
  def self.heibei_to_jo(heibei)
    heibei / JO_BASE
  end

  # 坪 → 平米 変換
  def self.tsubo_to_heibei(tsubo)
    tsubo * TSUBO_BASE
  end

  # 坪 → 畳 変換
  def self.tsubo_to_jo(tsubo)
    tsubo * TSUBO_BASE / JO_BASE
  end

  # 畳 → 平米 変換
  def self.jo_to_heibei(jo)
    jo * JO_BASE
  end

  # 畳 → 坪 変換
  def self.jo_to_tsubo(jo)
    jo * JO_BASE / TSUBO_BASE
  end

  # 平米
  def self.heibei(width, height)
    width * height
  end
end
