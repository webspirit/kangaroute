require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "should not be valid with empty name" do
	  page = FactoryGirl.build(:page, name: '')

	  assert_not page.valid?
	  assert page.errors.include?(:name)
	end

	test "should not be valid with empty title" do
	  page = FactoryGirl.build(:page, title: '')

	  assert_not page.valid?
	  assert page.errors.include?(:title)
	end

	test "should not be valid with empty content" do
	  page = FactoryGirl.build(:page, content: '')

	  assert_not page.valid?
	  assert page.errors.include?(:content)
	end

	test "should not be valid with empty meta description" do
	  page = FactoryGirl.build(:page, meta_description: '')

	  assert_not page.valid?
	  assert page.errors.include?(:meta_description)
	end
end
