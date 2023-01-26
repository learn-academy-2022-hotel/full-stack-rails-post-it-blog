require 'rails_helper'

RSpec.describe Blog, type: :model do
  # Test confirms the prescence of title in a blog
  it "confirms the prescence of a title in the blog" do 
    # check that the errors object for the title attribute is not empty
    blog = Blog.create(content:"Austin just got a job! Congrats!") 
    expect(blog.errors[:title]).to_not be_empty
  end

  # Test confirms the presence of content in a blog
  it "confirms the prescence of a content in the blog" do 
    # check that the errors object for the content attribute is not empty
    blog = Blog.create(title:"Get a job!") 
    expect(blog.errors[:content]).to_not be_empty
  end
end
