class HomeController < ApplicationController
    layout"user"
    def index
       
        @user = User.find(session[:user_id])
        @pages = Userpage.where(userid: session[:user_id])
    end

    def edit
       
        @user = User.find(session[:user_id])
        @pages = Userpage.where(userid: session[:user_id])
    end

    def admin
        @alluser = User.all
        @user = User.find(session[:user_id])
    end

    def data
       @userid=session[:user_id] 
    end

    def pagedata
        @pages=Userpage.where(id: params[:pageid]) 
     end

    def seo
        @pages = Userpage.where(userid: session[:user_id])
    end

    def listpage
        @pages = Userpage.where(userid: session[:user_id])
        
    end

    def subpage
        @pages=Userpage.where(id: params[:pageid]) 
    end

    def create
        page = Userpage.new(page_params)
        if page.save
            
            redirect_to '/dashboard'
        else
            flash[:register_errors] = user.errors.full_messages
            redirect_to '/'
        end
        # user = User.create!(user_params)
        # session[:user_id] = user.id
        # redirect_to '/dashboard'
    end

    def createsubpage
        page = Subpage.new(subpage_params)
        if page.save
            
            redirect_to '/listpage'
        else
            flash[:register_errors] = user.errors.full_messages
            redirect_to '/'
        end
        # user = User.create!(user_params)
        # session[:user_id] = user.id
        # redirect_to '/dashboard'
    end

    private
        def page_params
            params.require(:page).permit(:userid, :title, :pagetitle, :keywords, :metadescription, :description, :image)

        end
    
    private
        def subpage_params
            params.require(:page).permit(:pageid, :title, :pagetitle, :keywords, :metadescription, :description, :image)

        end
end
