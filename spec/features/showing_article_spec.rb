require 'rails_helper'

RSpec.feature 'Showing and Article' do
  before do
    @article = Article.create(title: 'The First Article', body: 'Body of the first article')
  end
  
  scenario 'Display an individual article' do
    visit '/'
    click_link @article.title
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))
  end
end
