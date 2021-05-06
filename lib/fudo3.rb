require "fudo3/version"

module Fudo3
  class Error < StandardError; end

  TSUBO_BASE = 3.305785
  JO_BASE = 1.6562

  # 平米 → 坪 変換
  # @param [Float] heibei 平米
  # @return [Float] 坪
  def self.heibei_to_tsubo(heibei)
    heibei.to_f / TSUBO_BASE
  end

  # 平米 → 畳 変換
  # @param [Float] heibei 平米
  # @return [Float] 畳
  def self.heibei_to_jo(heibei)
    heibei.to_f / JO_BASE
  end

  # 坪 → 平米 変換
  # @param [Float] tsubo 坪
  # @return [Float] 平米
  def self.tsubo_to_heibei(tsubo)
    tsubo.to_f * TSUBO_BASE
  end

  # 坪 → 畳 変換
  # @param [Float] tsubo 坪
  # @return [Float] 畳
  def self.tsubo_to_jo(tsubo)
    tsubo.to_f * TSUBO_BASE / JO_BASE
  end

  # 畳 → 平米 変換
  # @param [Float] jo 畳
  # @return [Float] 平米
  def self.jo_to_heibei(jo)
    jo.to_f * JO_BASE
  end

  # 畳 → 坪 変換
  # @param [Float] jo 畳
  # @return [Float] 坪
  def self.jo_to_tsubo(jo)
    jo.to_f * JO_BASE / TSUBO_BASE
  end

  # 平米
  # @param [Float] length 縦
  # # @param [Float] width 横
  # @return [Float] 平米
  def self.to_heibei(length, width)
    length.to_f * width.to_f
  end

  # 坪単価
  # @param [Float] price 価格(万円)
  # @param [Float] tsubo 坪
  # @return [Float] 坪単価
  def self.price_per_tsubo(price, tsubo)
    price.to_f / tsubo.to_f
  end

  # 平米単価
  # @param [Float] price 価格(万円)
  # @param [Float] heibei 平米
  # @return [Float] 平米単価
  def self.price_per_heibei(price, heibei)
    price.to_f / heibei.to_f
  end
end
