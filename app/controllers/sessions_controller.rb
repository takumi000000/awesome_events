class SessionsController < ApplicationController
    def create
        puts "sessions#create"
        puts "sessions#create"
        puts "sessions#create"
        puts "sessions#create"
        puts "sessions#create"
        user = User.find_or_create_from_auth_hash!(request.env["omniauth.auth"]) # OmniAuth::AuthHashクラスのオブジェクト、request.env["omniauth.auth"]はGitHubから渡されたユーザ情報や、OAuthのアクセストークンなどが格納されている。
        session[:user_id] = user.id
        redirect_to root_path, notice: "ログインしました。" # notice: "表示するflashメッセージ"
    end
    def destroy
        reset_session
        redirect_to root_path, notice: "ログアウトしました"
    end
end
