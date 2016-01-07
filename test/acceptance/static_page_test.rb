require_relative '../acceptance_helper'

class StaticPageTest < AcceptanceTestCase
  def test_about_exists
    visit '/'
    click_on 'About'

    assert_css 'h1', text: 'About'
  end

  def test_donate_exists
    visit '/'
    click_on 'Donate'

    assert_css 'h1', text: 'Donate'
  end

  def test_styleguide_exists
    user = create_user
    with_login(user) do
      visit '/styleguide'

      assert_css 'a', text: 'Styleguide'
    end
  end
end
