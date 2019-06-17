class MemosController < ApplicationController
    def index  #ここにnewも含まれる
        
    end
    
    def create
        Memo.create(what:params["memos"]["memo"],when:params["memos"]["datetime"])
        redirect_to "/show" #エラー出そう。個別のshowページに飛ばす方法確認する
    end
    
    def show
        #@user = User.find(params[:id]) #自分のメモだけ見れる
        @memos = Memo.all #自分のメモだけ持ってくる
    end
    
    def destroy
        memo = Memo.find(params["id"])
        memo.destroy
        redirect_to "/show"
    end
end
