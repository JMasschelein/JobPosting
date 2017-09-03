class JobsController < ApplicationController


  def show
      @job = Job.find(params[:id])
  end

  def new
      @category = Category.find(params[:category_id])
      @job = Job.new
  end
    
   def create

     @job = Job.new
     @job.title = params[:job][:title]
     @job.description = params[:job][:description]
     @job.deadline = params[:job][:deadline]
     @job.budget = params[:job][:budget]
     @category = Category.find(params[:category_id])
     @job.category = @category

     if @job.save
       flash[:notice] = "Job was saved."
       redirect_to [@category,@job]
     else
       flash.now[:alert] = "There was an error saving the job. Please try again."
       render :new
     end
   end    

  def edit
      @job = Job.find(params[:id])
  end
    
   def update
     @job = Job.find(params[:id])
     @job.title = params[:job][:title]
     @job.description = params[:job][:description]
     @job.deadline = params[:job][:deadline]
     @job.budget = params[:job][:budget]
 
     if @job.save
       flash[:notice] = "Job was updated."
       render :show
     else
       flash.now[:alert] = "There was an error saving the job. Please try again."
       render :edit
     end
   end 
    
   def destroy
     @job = Job.find(params[:id])
 
     if @job.destroy
       flash[:notice] = "\"#{@job.title}\" was deleted successfully."
       redirect_to @job.category
     else
       flash.now[:alert] = "There was an error deleting the job."
       render :show
     end
   end    
    
end
