class CheckAssignmentController < ApplicationController
  def which_class
  	
  end

  def assignment_show
	@year = params[:year]
  	@branch = params[:branch]
  	@group = params[:group]
  	@subject = params[:subject]
  	@number = params[:assignment_no]
#@result = Assignment.where({ year: "@year",branch: "@branch",group: "@group",
		#subject: "@subject", assignment_no: "@assignment_no"})

  	 @results = User.includes(:assignments).where("assignments.assignment_no = @number").references(:assignments)
  	
  end
end
