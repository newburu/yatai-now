# db/fixtures/04_locations.rb

# 灘のけんか祭り (ID 1~7)
base_lat = 34.7865
base_lng = 134.7176

locations = [
  { stall_id: 1, latitude: base_lat + 0.003, longitude: base_lng + 0.003, timestamp: Time.current - 0.minutes },
  { stall_id: 1, latitude: base_lat + 0.002, longitude: base_lng + 0.002, timestamp: Time.current - 15.minutes },
  { stall_id: 1, latitude: base_lat + 0.001, longitude: base_lng + 0.001, timestamp: Time.current - 30.minutes },

  { stall_id: 2, latitude: base_lat - 0.003, longitude: base_lng + 0.006, timestamp: Time.current - 0.minutes },
  { stall_id: 2, latitude: base_lat - 0.002, longitude: base_lng + 0.004, timestamp: Time.current - 15.minutes },
  { stall_id: 2, latitude: base_lat - 0.001, longitude: base_lng + 0.002, timestamp: Time.current - 30.minutes },

  { stall_id: 3, latitude: base_lat + 0.006, longitude: base_lng - 0.003, timestamp: Time.current - 0.minutes },
  { stall_id: 3, latitude: base_lat + 0.004, longitude: base_lng - 0.002, timestamp: Time.current - 15.minutes },
  { stall_id: 3, latitude: base_lat + 0.002, longitude: base_lng - 0.001, timestamp: Time.current - 30.minutes },

  { stall_id: 4, latitude: base_lat - 0.006, longitude: base_lng - 0.006, timestamp: Time.current - 0.minutes },
  { stall_id: 4, latitude: base_lat - 0.004, longitude: base_lng - 0.004, timestamp: Time.current - 15.minutes },
  { stall_id: 4, latitude: base_lat - 0.002, longitude: base_lng - 0.002, timestamp: Time.current - 30.minutes },

  { stall_id: 5, latitude: base_lat + 0.000, longitude: base_lng + 0.009, timestamp: Time.current - 0.minutes },
  { stall_id: 5, latitude: base_lat + 0.000, longitude: base_lng + 0.006, timestamp: Time.current - 15.minutes },
  { stall_id: 5, latitude: base_lat + 0.000, longitude: base_lng + 0.003, timestamp: Time.current - 30.minutes },

  { stall_id: 6, latitude: base_lat + 0.009, longitude: base_lng + 0.000, timestamp: Time.current - 0.minutes },
  { stall_id: 6, latitude: base_lat + 0.006, longitude: base_lng + 0.000, timestamp: Time.current - 15.minutes },
  { stall_id: 6, latitude: base_lat + 0.003, longitude: base_lng + 0.000, timestamp: Time.current - 30.minutes },

  { stall_id: 7, latitude: base_lat - 0.009, longitude: base_lng + 0.000, timestamp: Time.current - 0.minutes },
  { stall_id: 7, latitude: base_lat - 0.006, longitude: base_lng + 0.000, timestamp: Time.current - 15.minutes },
  { stall_id: 7, latitude: base_lat - 0.003, longitude: base_lng + 0.000, timestamp: Time.current - 30.minutes }
]

# 魚吹八幡神社 秋季例祭 (ID 8~25)
base_lat2 = 34.8091
base_lng2 = 134.5828

18.times do |i|
  stall_id = i + 8

  # 位置を円形に少しずつずらして配置する
  angle = (i * 20) * Math::PI / 180.0
  radius_lat = 0.005
  radius_lng = 0.005

  lat_offset = Math.sin(angle) * radius_lat
  lng_offset = Math.cos(angle) * radius_lng

  # 現在地
  locations << { stall_id: stall_id, latitude: base_lat2 + lat_offset, longitude: base_lng2 + lng_offset, timestamp: Time.current - 0.minutes }
  # 15分前
  locations << { stall_id: stall_id, latitude: base_lat2 + (lat_offset * 0.8), longitude: base_lng2 + (lng_offset * 0.8), timestamp: Time.current - 15.minutes }
  # 30分前
  locations << { stall_id: stall_id, latitude: base_lat2 + (lat_offset * 0.5), longitude: base_lng2 + (lng_offset * 0.5), timestamp: Time.current - 30.minutes }
end

Location.seed(:stall_id, :timestamp, *locations)
