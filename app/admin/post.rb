ActiveAdmin.register Post do
	index do
		column :title
		column :content
		column :created_at do |post|
			div :class => "created_time" do
				post.created_at.strftime("%B %d %Y")
			end
		end
		actions
	end
end