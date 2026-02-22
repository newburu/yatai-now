# test_location.rb
festival = Festival.find_or_create_by!(name: "Test Fest", is_active: true)
user = User.find_or_create_by!(email: "test@example.com") do |u|
  u.password = "password"
end
stall = Stall.find_or_create_by!(name: "Test Stall", festival: festival, manager: user)

puts "Creating location 1..."
loc1 = stall.locations.create!(latitude: 35.0, longitude: 135.0, timestamp: 1.hour.ago)

puts "Creating location 2..."
loc2 = stall.locations.create!(latitude: 35.1, longitude: 135.1, timestamp: Time.current)

puts "Latest location directly: #{stall.locations.order(timestamp: :desc).first.latitude}"
puts "Latest location via association: #{stall.latest_location.latitude}"

puts "Reload stall..."
stall.reload
puts "Latest location via association after reload: #{stall.latest_location.latitude}"

stall.locations.destroy_all
