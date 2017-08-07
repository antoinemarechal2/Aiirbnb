class AppMailer < ActionMailer::Base
    def new_resolution(problem, resolution)
       @user = User.find(problem.user_id)
       @resolution = resolution
       @problem = problem
 mail(from: 'AltR <no-reply@alt-r.fr>', to: @user.email, subject: "Quelqu'un veut vous aider à résoudre votre problème !")
    end
end