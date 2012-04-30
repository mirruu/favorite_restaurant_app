class ListsController < ApplicationController
  
  def index
    if params[:cost].nil?
      @lists = List.all  
     
      respond_to do |format|
        format.html 
        format.json { render :json => @lists}
      end
      
    else
      cost_filtered_by = params[:cost]
      @lists = List.find_all_by_cost(cost_filtered_by)
    end
      
  end
  
  def update
    @list = List.find_by_id(params[:id])
    @list.name = params["name"]
    @list.cost = params["cost"]
    @list.description = params["description"]
    @list.save
    redirect_to "http://localhost:3000/lists"
  end
  
  def edit
    @list = List.find_by_id(params[:id])
  end
  
  def create
    List.create :name => params[:name], :cost => params[:cost], :description => params[:description]
    redirect_to "http://localhost:3000/lists"
  end
  
  def new
    
  end
  
  def show
    @list = List.find_by_id(params[:id])
  end
  
  def destroy 
    @list = List.find_by_id(params[:id])
    @list.destroy
    redirect_to "http://localhost:3000/lists"
  end
  
  
  
end
