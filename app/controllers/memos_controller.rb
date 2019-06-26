class MemosController < ApplicationController
    before_action :require_user_logged_in, only: [:create]
    before_action :correct_user, only: [:show, :destroy]
    
    def index  #ここにnewも含まれる
        
    end
    
    def create
        Memo.create(what:params["memos"]["memo"],when:params["memos"]["datetime"],wareki:params["memos"]["wareki"],user_id: current_user.id)
        redirect_to "/show" #エラー出そう。個別のshowページに飛ばす方法確認する
    end
    
    def show
      
    end
    
    def destroy
        memo = Memo.find(params["id"])
        memo.destroy
        redirect_to "/show"
    end
    
    def correct_user
        @memo = current_user.memos.find_by(id: params[:id])
        unless @memo
          redirect_to root_url
        end
    end
end
