class MembersController < ApplicationController
  def index
    @member = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new member_params
    if @member.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
    @member = Member.find(params[:id])
  end

private
  def member_params
    params.require(:member).permit(:name, :email, :password, :password_confirmation)
  end

end
