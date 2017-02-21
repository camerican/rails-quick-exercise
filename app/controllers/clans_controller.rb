class ClansController < ApplicationController
  def index
    @clans = Clan.all
  end
  def show
    @clan = Clan.find(params[:id])
  end
  def destroy
    begin
      @clan = Clan.find(params[:id])
    end
    if @clan
      # wipe out all users in this clan's reference to the clan
      @clan.users.each do |user|
        user.clan_id = nil
        user.save
      end
      if @clan.destroy
        flash[:notice] = "Your clan is wiped out... sad times..."
      else
        flash[:notice] = "Sorry, your clan lives on"
      end
    end
    redirect_to clans_path
  end
end
