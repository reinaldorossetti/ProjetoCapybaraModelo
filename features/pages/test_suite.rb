#require '../framework/page_base' # para visualizar as funcoes dentro da classe mae PageBase.

require 'site_prism'

class TestSuite < SitePrism::Page


  element :text, '#entry_1000000'
  element :combobox, 'select[id*=entry_1000001]'
  element :test_radio01, value: 'A programming language'
  element :both, '#group_1000003_3'
  element :versions01, '#group_1000004_1'
  element :versions02, '#group_1000004_2'
  element :versions03, '#group_1000004_3'
  element :submit, 'input[name*=submit]'

  def initialize
    @base = PageBase.new
  end

  def test_form_fill(texto, language, ruby, versions)

    @base.preencher(text, texto)
    combobox.select(language)

    case ruby
      when 'A programming language'
        choose 'A programming language'
      when 'A gem'
        choose 'A gem'
      else 'Both'
        choose 'Both'
    end
    #binding.pry
    case versions
      when '1.8.6'
        @base.clique(versions01)
      when '1.8.7'
        @base.clique(versions02)
      when '1.9.2'
        @base.clique(versions03)
    end

    puts text.inspect
  end

  def submit
    @base.clique(submit)
  end

  def title
    @base.title
  end

  def close
    @base.quit
  end

end
