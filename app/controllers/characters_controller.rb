class CharactersController < ApplicationController
  before_action :set_character, only: %i[ show edit update destroy ]

  # GET /characters or /characters.json
  def index
    @characters = Character.where(owner_id: current_user.id)
  end

  # GET /characters/1 or /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters or /characters.json
  def create
    @character = Character.new(character_params)
    @character.owner = current_user



    respond_to do |format|
      if @character.save
        skill = Skill.create(character_id: @character.id)
        skill.dodge = @character.dex / 2
        skill.language_own = @character.edu
        

        # fills in skills based on character's occupation
        occupation = Occupation.find(@character.occupation_id)
        occupation_skills = occupation.occupation_skills

        occupation_skills.each do |skill_name, value|
          if skill_name.split("_").first != "any"
            skill[skill_name] = value
          else
            any_skill = Skill.column_names.sample
            while any_skill.split("_").last == "id" || any_skill == "cthulhu_mythos" || any_skill == "credit_rating" || skill[any_skill] >= 25
              any_skill = Skill.column_names.sample
            end

            skill[any_skill] = value
          end
        end

        # randomly chooses hobby skills
        4.times do
          hobby_skill = Skill.column_names.sample
          while  hobby_skill.split("_").last == "id" || hobby_skill == "cthulhu_mythos" || hobby_skill == "credit_rating" || skill[hobby_skill] >= 25
            hobby_skill = Skill.column_names.sample
          end

          skill[hobby_skill] = 40

        end

        skill.save

        campaign_id = params.fetch(:character).fetch(:characters_campaign).fetch(:characters_campaign_id)

        if campaign_id != nil
          CharactersCampaign.create(character_id: @character.id, campaign_id: campaign_id)
        end


        format.html { redirect_to character_url(@character), notice: "Character was successfully created." }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1 or /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to character_url(@character), notice: "Character was successfully updated." }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1 or /characters/1.json
  def destroy
    @character.destroy

    respond_to do |format|
      format.html { redirect_to characters_url, notice: "Character was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:owner_id, :first_name, :last_name, :str, :con, :siz, :dex, :app, :pow, :edu, :luck, :age, :damage_bonus, :hp, :mov, :pronoun, :max_sanity, :occupation_id, :mp, characters_campaign_attributes: [:characters_campaign_id])
    end
end
