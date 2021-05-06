# Fudo3

[![Gem Version](https://badge.fury.io/rb/fudo3.svg)](https://badge.fury.io/rb/fudo3)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

## Installation

fudo3は不動産でよく使われる関数をまとめたものです。  
今後拡張していく予定です。

```ruby
gem 'fudo3'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fudo3

## Usage

```
# 平米 → 坪 変換
Fudo3.heibei_to_tsubo(1)
=> 0.30250001134375043

# 平米 → 畳 変換
Fudo3.heibei_to_jo(1)
=> 0.6037918125830214

# 坪 → 平米 変換
Fudo3.tsubo_to_heibei(1)
=> 3.305785

# 坪 → 畳 変換
Fudo3.tsubo_to_jo(1)
=> 1.9960059171597635

# 畳 → 平米 変換
Fudo3.jo_to_heibei(1)
=> 1.6562

# 畳 → 坪 変換
Fudo3.jo_to_tsubo(1)
=> 0.5010005187875194

# 平米
Fudo3.to_heibei(1, 1)
=> 1

# 坪単価
Fudo3.price_per_tsubo(10000, 1000)
=> 10.0

# 平米単価
Fudo3.price_per_heibei(10000, 1000)
=> 10.0
```

## Contributing
1. Fork it.
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create new Pull Request
