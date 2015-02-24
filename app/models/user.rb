class User < ActiveRecord::Base
	has_many :authorizations, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, 
         :omniauth_providers => [:facebook, :twitter]
 
	def self.find_or_create_from_auth_hash(auth)
		where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end

 	def self.from_omniauth(auth)
    	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	        user.provider = auth.provider
	        user.uid = auth.uid
	        user.email = auth.info.email
	        user.password = Devise.friendly_token[0,20]
	        # user.name = auth.info.name
	        # user.image = auth.info.image
      	end
  	end
end
