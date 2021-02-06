require 'rails_helper'

describe 'new post' do
    it 'ensures that the form route works with the /new action' do
        visit new_post_path
        expect(page.status_code).to eq(200)
    end

    it 'renders HTML in the /new template' do
        visit new_post_path
        expect(page).to have_content('Post Form')
    end

    it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
        # perform
        # keyword 'visit' to visit specific route
        visit new_post_path
        # keyword 'fill_in' when you want to fill a form field with input
        fill_in 'post_title', with: 'My post title'
        fill_in 'post_description', with: 'My post description'
        # keyword 'click_on' to click on the submission button
        click_on 'Submit Post'

        # keyword 'current_path' in 'page.current_path' to observe what the current route or what route is going to is
        expect(page.current_path).to eq(posts_path)
        # keyword 'to' and 'have_content' to scan specified page for specific content, mainly text 
        expect(page).to have_content('My post title')
        expect(page).to have_content('My post description')
    end
end