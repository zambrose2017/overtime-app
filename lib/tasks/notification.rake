namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
     # if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime managment dashboard to request overtime: https://za-overtime.herokuapp.com"
     #4 send a message that has instructions and a link to log time 
    employees.each do |employee|
      AuditLog.create!(user_id: employee.id)
      SmsTool.send_sms(number: employee.phone, message: notification_message )
       # end
    end
  end
  
    desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
    task manager_email: :environment do
    
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end
end
