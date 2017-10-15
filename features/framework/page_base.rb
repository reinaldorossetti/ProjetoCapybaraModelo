require 'capybara'

class PageBase < SitePrism::Page

  # def initialize(browser)
  #   @driver = browser
  # end

  def preencher(element, value)

    result = element_exists?(element)
    if result
        # deve usar o set_text, pois a funcao faz varios tratamentos.
        element.set value
    end
  rescue Selenium::WebDriver::Error::UnexpectedAlertOpenError
    sleep 3
    retry
  end

  def clique(element)

    # Mapeia o elemento e verifica se o elemento existe e visivel.
    element_exists?(element)
    scroll_to_element(element)
    element.hover
    element.click

  rescue => ex
    puts ex.message
    puts ex.backtrace
    print "Tentando via javascript"

  end

  def element_exists?(element)

    if element.visible?
        puts element.inspect
        true
    end

  rescue => ex
    puts ex.message
    puts ex.backtrace
    print "Tela #{page.title} - Elemento '#{element.inspect}' não encontrado."
    false

  end

  def scroll_to_element(elem)

    page.execute_script('arguments[0].scrollIntoView();', elem)

  rescue => ex
    puts ex.message
    false
  end

  def obter_evidencia
    $encoded_img = page.driver.browser.screenshot_as(:base64)
  end

end
