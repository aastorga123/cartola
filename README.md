[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/aastorga123/cartola/blob/master/LICENSE) [![Gem Version](https://badge.fury.io/rb/cartolabco.svg)](https://badge.fury.io/rb/cartolabco)
[![Build Status](https://travis-ci.com/aastorga123/cartola.svg?branch=master)](https://travis-ci.com/aastorga123/cartola)

## __Information__

Import file from banks to raise bank balance.

Distributed in [RubyGems](https://rubygems.org/gems/cartolabco)

__Gemfile__

`gem 'cartolabco'`

__Install__

`gem install cartolabco`

## How to use

__from path or file__
```ruby
bci_xls = Cartolabco::BciParse.from_path('path ...')
bci_xls = Cartolabco::BciParse.from_file(file)
```

__get data__
```ruby
bci = bci_xls.parse
```

`bci` contains:

|attribute|type|
|:-:|:-:|
|numero_catola|int|
|cuenta_corriente|string|
|saldo_inicial|float|
|saldo_final|float|
|total_cargos|float|
|total_abonos|float|
|desde|string|
|hasta|string|
|movimientos|array|

`movimientos` contains:

|attribute|type|
|:-:|:-:|
|fecha|string|
|correlativo|int|
|descripcion|string|
|sucursal|string|
|nro_documento|string|
|cargo|float|
|abono|float|
|saldo|float|

## Contribute
just test your code before pull request, run 
```console
$ bundle exec rake test
```