ActiveAdmin.register Post do
	index do
		column :title
		column :content do |post|
			post.content[0..70]
		end 
		column :created_at do |post|
			div :class => "created_time" do
				post.created_at.strftime("%B %d %Y")
			end
		end
		actions
	end
end