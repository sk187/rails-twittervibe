class Authorization < ActiveRecord::Base
	belongs_to :user

	def self.find_for_facebook_oauth(auth)

		user = Authorization.where(:provider => auth.provider, :uid => auth.uid).first 
		unless user.nil?
		user.user
	else 
		registered_user = User.where(:email => auth.info.email).first
		unless registered_user.nil?
			Authorization.create!(
				provider: auth.provider,
				uid: auth.uid,
				user_id: registered_user.id
				)
			registered_user
		else
			user = User.create!(
				name: auth.info.name,
					email: auth.info.email,
					password: Devise.friendly_token[0,20],
					pic: auth.info.image
					)
			user_provider = Authorization.create!(
				provider: auth.provider,
					uid: auth.uid,
					user_id: user.id
				) 
			user
		end
	end
end

	def self.find_for_twitter_oauth(auth)
	    user = Authorization.where(:provider => auth.provider, :uid => auth.uid).first
	   	unless user.nil?
	    user.user
        
    else
        registered_user = User.where(:username => auth.info.nickname).first
        unless registered_user.nil?
            Authorization.create!(
                provider: auth.provider,
                uid: auth.uid,
                user_id: registered_user.id,
                )
            registered_user
    	else
            user = User.create!(
                name: auth.extra.raw_info.name,
                	username: auth.info.nickname,                      
                	password: Devise.friendly_token[0,20],
                	email: auth.uid+"@twitter.com",
                	pic: auth.info.image
                	)
            authorize = Authorization.create!(
                provider:auth.provider,
                	uid:auth.uid,
                	user_id: user.id,
                )
            user
        	end
    	end
	end
end