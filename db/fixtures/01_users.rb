# db/fixtures/01_users.rb

User.seed(:email,
  { id: 1, email: "admin@example.com", password: "password", password_confirmation: "password", role: :admin },

  # 灘のけんか祭り (7村)
  { id: 2, email: "manager1@example.com", password: "password", password_confirmation: "password", role: :manager }, # 東山
  { id: 3, email: "manager2@example.com", password: "password", password_confirmation: "password", role: :manager }, # 木場
  { id: 4, email: "manager3@example.com", password: "password", password_confirmation: "password", role: :manager }, # 松原
  { id: 5, email: "manager4@example.com", password: "password", password_confirmation: "password", role: :manager }, # 八家
  { id: 6, email: "manager5@example.com", password: "password", password_confirmation: "password", role: :manager }, # 妻鹿
  { id: 7, email: "manager6@example.com", password: "password", password_confirmation: "password", role: :manager }, # 宇佐崎
  { id: 8, email: "manager7@example.com", password: "password", password_confirmation: "password", role: :manager }, # 中村

  # 魚吹八幡神社 秋季例祭 (18村)
  { id: 9, email: "usuki_manager1@example.com", password: "password", password_confirmation: "password", role: :manager }, # 糸井
  { id: 10, email: "usuki_manager2@example.com", password: "password", password_confirmation: "password", role: :manager }, # 高田
  { id: 11, email: "usuki_manager3@example.com", password: "password", password_confirmation: "password", role: :manager }, # 福井
  { id: 12, email: "usuki_manager4@example.com", password: "password", password_confirmation: "password", role: :manager }, # 和久
  { id: 13, email: "usuki_manager5@example.com", password: "password", password_confirmation: "password", role: :manager }, # 坂出
  { id: 14, email: "usuki_manager6@example.com", password: "password", password_confirmation: "password", role: :manager }, # 津市場
  { id: 15, email: "usuki_manager7@example.com", password: "password", password_confirmation: "password", role: :manager }, # 北津市場
  { id: 16, email: "usuki_manager8@example.com", password: "password", password_confirmation: "password", role: :manager }, # 坂上
  { id: 17, email: "usuki_manager9@example.com", password: "password", password_confirmation: "password", role: :manager }, # 熊見
  { id: 18, email: "usuki_manager10@example.com", password: "password", password_confirmation: "password", role: :manager }, # 丁
  { id: 19, email: "usuki_manager11@example.com", password: "password", password_confirmation: "password", role: :manager }, # 田井
  { id: 20, email: "usuki_manager12@example.com", password: "password", password_confirmation: "password", role: :manager }, # 宮田
  { id: 21, email: "usuki_manager13@example.com", password: "password", password_confirmation: "password", role: :manager }, # 西土井
  { id: 22, email: "usuki_manager14@example.com", password: "password", password_confirmation: "password", role: :manager }, # 天満
  { id: 23, email: "usuki_manager15@example.com", password: "password", password_confirmation: "password", role: :manager }, # 吉美
  { id: 24, email: "usuki_manager16@example.com", password: "password", password_confirmation: "password", role: :manager }, # 平松
  { id: 25, email: "usuki_manager17@example.com", password: "password", password_confirmation: "password", role: :manager }, # 大江島
  { id: 26, email: "usuki_manager18@example.com", password: "password", password_confirmation: "password", role: :manager }  # 長松
)
