class UserMailer < ApplicationMailer
	default :from => "sophietaoyn@gmail.com"
  
  def email(deal)
  	if deal.alert_type == "Birthday"
  	mail(to: deal.email, :subject => "Happy Birthday") do |format|
  format.html { render 'birthday' } 
end
end
	if deal.alert_type == "Anniversary"
  	mail(to: deal.email, :subject => "Happy Anniversary") do |format|
  format.html { render 'anniversary' } 
end
end
	if deal.alert_type == "Christmas"
  	mail(to: deal.email, :subject => "Merry Christmas") do |format|
  format.html { render 'christmas' } 
end
end
if deal.alert_type == "Easter"
  	mail(to: deal.email, :subject => "Happy Easter") do |format|
  format.html { render 'easter' } 
end
end
if deal.alert_type == "Self-defined"
    mail(to: deal.email, :subject => "Happy Happy") do |format|
  format.html { deal.description } 
end
end

end
end


