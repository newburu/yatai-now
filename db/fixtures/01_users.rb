# db/fixtures/01_users.rb

User.seed(:email,
  { id: 1, email: "admin@example.com", password: "password", password_confirmation: "password", role: :admin },
  { id: 2, email: "manager1@example.com", password: "password", password_confirmation: "password", role: :manager }, # 東山
  { id: 3, email: "manager2@example.com", password: "password", password_confirmation: "password", role: :manager }, # 木場
  { id: 4, email: "manager3@example.com", password: "password", password_confirmation: "password", role: :manager }, # 松原
  { id: 5, email: "manager4@example.com", password: "password", password_confirmation: "password", role: :manager }, # 八家
  { id: 6, email: "manager5@example.com", password: "password", password_confirmation: "password", role: :manager }, # 妻鹿
  { id: 7, email: "manager6@example.com", password: "password", password_confirmation: "password", role: :manager }, # 宇佐崎
  { id: 8, email: "manager7@example.com", password: "password", password_confirmation: "password", role: :manager }  # 中村
)
