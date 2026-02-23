class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # viewerとsenderを廃止し、managerとadminのみにする
  enum :role, { manager: 2, admin: 3 }

  # role が 'manager' の場合、1つの屋台を担当する
  has_one :stall, foreign_key: "user_id"
end
