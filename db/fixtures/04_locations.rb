# db/fixtures/04_locations.rb

base_lat = 34.7865
base_lng = 134.7176

Location.seed(:stall_id, :timestamp,
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
)
