class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]
  
  def show
    
    #自分のメモだけ持ってくる
    @memos = current_user.memos

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to :root
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
