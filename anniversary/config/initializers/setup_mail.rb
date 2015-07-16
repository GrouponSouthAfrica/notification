ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => 'smtp.mandrillapp.com',
	:port => '587',
	:authentication => :plain,
	:user_name => 'sophietaoyn@gmail.com',
	:password => 'gJ2GMQQqVHYJDchABOBJ7w',
	:enable_starttls_auto => true
}