namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
   #1 schedule top run at Sunday at 5pm
   #2 iterate over all employees 
   #3 skip admin users
   #4 send a message that has instructions and a link to log time 
   # User.all.each do |user|
   #  SmsTool.send_sms()
   #  end
  
   #number: "5555555555"
   #no spaces, 10 charactrs exactly and all numbers

  end

end