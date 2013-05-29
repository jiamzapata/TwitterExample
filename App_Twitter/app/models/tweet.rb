class Tweet < ActiveRecord::Base

	Twitter.configure do |config|
	  config.consumer_key = 'X3Gtf6Aw0lptRhw271It7w'
	  config.consumer_secret = 'SzkVDq83hsts31XaffI76RJk06PpoLuDcsACSpMHoE'
	  #Oauth_token = Access token
	  config.oauth_token = '44921852-dmZTi6xp24XCuc3Zbf7yrhAYnCQcalH7orozNBzmc'
	  #Oauth_token_Secret = Access token secret
	  config.oauth_token_secret = '3H44enORaB5DnNsc5T4936A5kpShK3PY6pMwJn1qASc'
	end

	def read_message
		return "no hay usuario" if self.user.blank?
		Twitter.user_timeline(self.user).first.text
	end

end
