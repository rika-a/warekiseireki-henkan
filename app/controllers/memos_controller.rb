class MemosController < ApplicationController
    def index  #ここにnewも含まれる
        
    end
    
    def create
        Memo.create(what:params["memos"]["memo"],when:params["memos"]["datetime"])
        redirect_to "/show" #エラー出そう。個別のshowページに飛ばす方法確認する
    end
    
    def show
        @memos = Memo.all
    end
    
    def destroy
        memo = Memo.find(params["id"])
        memo.destroy
        redirect_to "/show"
    end
end
