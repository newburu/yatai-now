# app/controllers/admin/base_controller.rb

class Admin::BaseController < ApplicationController
  # 1. まずはログイン必須
  before_action :authenticate_user!

  # 2. 次に「管理者(admin)」かどうかをチェック
  before_action :require_admin

  private

  def require_admin
    # Userモデルでenum role: { admin: 0, ... } と定義したので、
    # current_user.admin? というメソッドが自動で使えます。

    # もし管理者でなければ、トップページ（未設定）に追い出す
    redirect_to root_path, alert: "管理者権限がありません" unless current_user.admin?
  end
end
