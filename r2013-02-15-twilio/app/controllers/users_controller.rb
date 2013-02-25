class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def sendtxt
    name = params[:first]
    body = params[:body]
    user = User.where(:name => name).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+19175127688', :to => user.phone, :body => body)
    redirect_to(root_path)
  end
  def create
  end
  def new
  end
  def edit
  end
  def show
  end
  def update
  end
  def destroy
  end
end