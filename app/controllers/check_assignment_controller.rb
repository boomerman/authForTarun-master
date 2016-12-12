class CheckAssignmentController < ApplicationController
  
before_action :authenticate_user! 
  before_action :teachers_only


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

  	 #@results = User.includes(:assignments).where("assignments.assignment_no = @number").references(:assignments)
  	@results = User.select('assignments.subject, assignments.submitted_to, assignments.assignment_no')
          .joins(' INNER JOIN assignments ON assignments.roll_no = users.roll_no')
          .where('assignments.assignment_no = @number')	
         # puts "#{@results.roll_no}"

#@results = Assignment.all

  end

   private
    def teachers_only
    unless current_user.teacher? || current_user.admin?
      redirect_to root_path, :alert => "Access denied, only for teachers."
    end
  end
end
