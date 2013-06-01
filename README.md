# evecache

lives at: [https://github.com/MrMarvin/ruby-evecache]( https://github.com/MrMarvin/ruby-evecache)

## DESCRIPTION

A Ruby binding to libevecache to access Eve Online market cache files.

## FEATURES/PROBLEMS

Does nothing more than reading these files...

## REQUIREMENTS

* a good Ruby (> 1.9.3)
* a c++ compiler and the common `make` tool(s)

## INSTALL

`gem install evecache` or clone this repository and build yourself

## USAGE

	require 'evecache'
	Evecache.path="/Users/marv/Library/Application Support/EVE Online/p_drive/Local Settings/Application Data/CCP/EVE/c_program_files_ccp_eve_tranquility/cache/MachoNet/87.237.38.200/359/CachedMethodCalls/"
	Evecache.open("ea66").region # => 10000032

To load the market orders from this file call either `Evecache.open("ea66").buy_orders` or `sell_orders`. 
Both methods return an Array of Hashes with the orders. Example:

	[{:price=>755100630000, :vol_remaining=>1.0, :type_id=>4308, :range=>65535, :order_id=>2941699044, :vol_entered=>1, :min_volume=>1, :issued=>130144611420000000, :duration=>30, :station_id=>60011866, :region_id=>10000032, :system_id=>30002659, :jumps=>0, :sell_or_buy=>:buy},
	...,
	{:price=>755101080000, :vol_remaining=>1.0, :type_id=>4308, :range=>65535, :order_id=>2988663834, :vol_entered=>2, :min_volume=>1, :issued=>130145490018987642, :duration=>30, :station_id=>60011866, :region_id=>10000032, :system_id=>30002659, :jumps=>0, :sell_or_buy=>:buy}]


## LICENSE

GNU GENERAL PUBLIC LICENSE Version 2