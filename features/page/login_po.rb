
class Login_Page < SitePrism::Page
  element :username, 'input[id=user_email]'
  element :password, 'input[id=user_password]'
  element :login_button, 'input[type=submit]'

  def authorized_user
    username.set 'jcarboni2@gmail.com'
    password.set 'T&st$1'
    login_button.click
  end
end
