class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by_email(params[:email])

    if member && member.authenticate(params[:password])
      session[:member_id] = member.id
      redirect_to whiskeys_path
    else
      redirect_to new_session_path
    end

  end

  def destroy
    session[:member_id] = nil
    redirect_to root_path
  end

# private method - we don't want anyone else to be able to grab the method
  # private
  # def member_params
  #   params.require(:member).permit(:member_id, :email, :password)
  # end
end
