FactoryGirl.define do
	factory :user do
		name "User Name"
		email "sample@example.com"
		password "password"
		
		factory :admin_user do
			admin true
		end
	end
end