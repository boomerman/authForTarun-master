class CheckAssignmentController < ApplicationController
  def which_class
  end

  def assignment_show
  	@year = params[:year]
  	@branch = params[:branch]
  	@group = params[:group]
  end
end
