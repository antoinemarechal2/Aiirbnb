class ResolutionMailer < ApplicationMailer
  def send_notification(problem, resolution)
    @user = User.find(problem.user_id)
    @resolution = resolution
    @problem = problem
    mail from: 'AltR <contact@alt-r.fr>', to: @user.email, subject: "Quelqu'un veut vous aider à résoudre votre problème !"
  end
end
