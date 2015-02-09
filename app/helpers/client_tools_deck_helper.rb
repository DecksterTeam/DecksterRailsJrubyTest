module ClientToolsDeckHelper
  def render_client_tools_deck
    deck_config = {id: 'sample_deck_a'}
    render_deckster_deck deck_config, [
        {card: :jquery, load: :async, title: 'jQuery', row: 1, col: 1, sizex: 1, sizey: 1},
        {card: :bootstrap, load: :async, row: 1, col: 2, sizex: 1, sizey: 1},
        {card: :font_awesome, load: :async, title: 'Font Awesome', load: :async, row: 1, col: 3, sizex: 1, sizey: 1},
        {card: :gridster, load: :async, load: :async, row: 1, col: 4, sizex: 1, sizey: 1},
        {card: :exif, load: :async, load: :async, row: 2, col: 1, sizex: 1, sizey: 1},
        {card: :datatables, load: :async, load: :async, row: 2, col: 2, sizex: 1, sizey: 1},
    ]
  end
  
  def render_jquery_summary_card
    'Just an awesome starting point.  Very few web applications are found the do not use jQuery'.html_safe
  end
  
  def render_jquery_detail_card
    "Please reference #{link_to nil, 'http://jquery.com/'} for more info".html_safe
  end

  def render_bootstrap_summary_card
    'Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile first projects on the web.'
  end

  def render_bootstrap_detail_card
    "Please reference #{link_to nil, 'http://getbootstrap.com/'} for more info".html_safe
  end
  
  def render_font_awesome_summary_card
    'Font Awesome gives you scalable vector icons that can instantly be customized - size, color, drop shadow, and anything that can be done with the power of CSS.'
  end

  def render_font_awesome_detail_card
    "Please reference #{link_to nil, 'http://fortawesome.github.io/Font-Awesome/'} for more info".html_safe
  end
  
  def render_gridster_summary_card
    'Gridster is a jQuery plugin that allows building intuitive draggable layouts from elements spanning multiple columns'
  end

  def render_gridster_detail_card
    "Please reference #{link_to nil, 'http://gridster.net/'} for more info".html_safe
  end

  def render_exif_summary_card
    'A JavaScript library for reading EXIF meta data from JPEG image files.'.html_safe
  end

  def render_exif_detail_card
    "Please reference #{link_to nil, 'https://github.com/jseidelin/exif-js'} for more info".html_safe
  end
  
  def render_datatables_summary_card
    'DataTables'.html_safe
  end
end
