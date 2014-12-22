class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def login
  end

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def player_status
  end

  def new
    @player = Player.new
  end

  def edit
  end

  def create
    @player = Player.new(player_params)
    @player.user_id = User.find(session[:id]).id
    respond_to do |format|
      if @player.save
        session[:player_id] = @player.id
        format.html { redirect_to @player, notice: "#{@player.name} was successfully created." }
        format.json { render :show, status: :created, location: @player }
      else
        format.html {
          flash[:error] = 'Unable to save player: ' + @player.errors.full_messages.to_sentence
          render :new
        }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name)
    end
end
