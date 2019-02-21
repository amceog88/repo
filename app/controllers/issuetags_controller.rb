class IssuetagsController < ApplicationController
  # before_action :set_issuetag, only: [:show, :edit, :update, :destroy]

  # # GET /issuetags
  # # GET /issuetags.json
  # def index
  #   @issuetags = Issuetag.all
  # end

  # # GET /issuetags/1
  # # GET /issuetags/1.json
  # def show
  # end

  # # GET /issuetags/new
  # def new
  #   @issuetag = Issuetag.new
  # end

  # # GET /issuetags/1/edit
  # def edit
  # end

  # # POST /issuetags
  # # POST /issuetags.json
  # def create
  #   @issuetag = Issuetag.new(issuetag_params)

  #   respond_to do |format|
  #     if @issuetag.save
  #       format.html { redirect_to @issuetag, notice: 'Issuetag was successfully created.' }
  #       format.json { render :show, status: :created, location: @issuetag }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @issuetag.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /issuetags/1
  # # PATCH/PUT /issuetags/1.json
  # def update
  #   respond_to do |format|
  #     if @issuetag.update(issuetag_params)
  #       format.html { redirect_to @issuetag, notice: 'Issuetag was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @issuetag }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @issuetag.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /issuetags/1
  # # DELETE /issuetags/1.json
  # def destroy
  #   @issuetag.destroy
  #   respond_to do |format|
  #     format.html { redirect_to issuetags_url, notice: 'Issuetag was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_issuetag
  #     @issuetag = Issuetag.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def issuetag_params
  #     params.require(:issuetag).permit(:name)
  #   end
end
