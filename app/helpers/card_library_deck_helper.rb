module CardLibraryDeckHelper
  def render_card_library_deck
    render_deckster_deck :card_library, [
        {card: :custom, load: :async, row: 1, col: 1, sizex: 1, sizey: 1},
        {card: :custom_with_partial, load: :async, row: 1, col: 2, sizex: 1, sizey: 1},
        {card: :icon_counts, load: :async, row: 1, col: 3, sizex: 1, sizey: 1},
        {card: :bubble_chart, load: :async, row: 1, col: 4, sizex: 1, sizey: 1},
    ]
  end
  
  def render_custom_summary_card
    'Custom Card'.html_safe
  end
  
  def render_custom_with_partial_summary_card
    render partial: 'application/custom_with_partial_summary_card'
  end
  
  def render_icon_counts_summary_card
    count_configs = [
         {icon: :youtube, count: 100},
         {title: 'Vimeo', icon: 'vimeo-square', count: 50},
         {icon: :yelp, count: 25},
         
   ]
    render_deckster_icon_counts_card count_configs
  end

  def render_bubble_chart_summary_card
    chart_configs = {
        id: :bubble_chart_summary,
        data_url: data_path(:bubble_chart),
        height: 180,
        width: 240,
    }
    render_deckster_bubble_chart_card chart_configs
  end

  def render_bubble_chart_data
    render partial: "application/bubble_chart_data"
  end
end