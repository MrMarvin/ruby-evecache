require 'evecache.bundle'

module Evecache
  VERSION = "0.42.0"
end

class Evecache::MarketList
	def invalid?
		# I guess thats the only way to check for invalid files as the c++ code does not raise exceptions or something here
		self.region == 0
	end

	def sell_orders
		getSellOrders.collect() { |o| h={}
			h[:price] = o.price
			h[:vol_remaining] = o.volRemaining
			h[:type_id] = o.type
			h[:range] = o.range
			h[:order_id] = o.orderID
			h[:vol_entered] = o.volEntered
			h[:min_volume] = o.minVolume
			h[:issued] = o.issued
			h[:duration] = o.duration
			h[:station_id] = o.stationID
			h[:region_id] = o.regionID
			h[:system_id] = o.solarSystemID
			h[:jumps] = o.jumps
			h[:sell_or_buy] = :sell
			h 
		}
	end
	def buy_orders
		getBuyOrders.collect() { |o| h={}
			h[:price] = o.price
			h[:vol_remaining] = o.volRemaining
			h[:type_id] = o.type
			h[:range] = o.range
			h[:order_id] = o.orderID
			h[:vol_entered] = o.volEntered
			h[:min_volume] = o.minVolume
			h[:issued] = o.issued
			h[:duration] = o.duration
			h[:station_id] = o.stationID
			h[:region_id] = o.regionID
			h[:system_id] = o.solarSystemID
			h[:jumps] = o.jumps
			h[:sell_or_buy] = :buy
			h 
		}
	end
end

module Evecache
	class << self
		
		@@path = ""

		def open(filename)
      filename = path(filename) unless File.exists? filename
      raise StandardError.new "File not found: #{filename}!" unless File.exists? filename
      list = MarketParser.new(filename).getList            
		  raise StandardError.new "Could not read MarketList! Invalid file?!" if list.invalid?      
			list
		end

		def path=(path)
			@@path=path
		end

		def path(filename="")
			if filename.empty?
        @@path
      else
        @@path+"/"+filename+(filename.end_with?(".cache") ? "" : ".cache")
      end
		end

    def list_files
      Dir.glob(@@path+"/*.cache")
    end

	end
end