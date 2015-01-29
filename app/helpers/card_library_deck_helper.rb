module CardLibraryDeckHelper
  def render_card_library_deck
    deck_config = {id: 'card_library'}
    radial_visualizations = [
        {id: 'first_radial_chart', type: 'radial', title: 'Title 1', data_source: 'collect_first_data', showLegend: false, theme: 'green', style: 'concentric'},
        {id: 'second_radial_chart', type: 'radial', title: 'Title 2', data_source: 'collect_second_data'},
        {id: 'third_radial_chart', type: 'radial', title: 'Title 3', data_source: 'collect_third_data', sort: true},
    ]
    render_deckster_deck deck_config, [
        {card: :custom, load: :async, row: 1, col: 1, sizex: 1, sizey: 1},
        {card: :custom_with_partial, load: :async, row: 1, col: 2, sizex: 1, sizey: 1},
        {card: :icon_counts, load: :async, row: 1, col: 3, sizex: 1, sizey: 1},
        {card: :bubble_chart, load: :async, row: 1, col: 4, sizex: 1, sizey: 1},
        {card: :cluster_dendrogram_tree, load: :async, row: 2, col: 1, sizex: 1, sizey: 1, title: 'Dendrogram Tree'},
        {card: :cluster_dendrogram_radial, load: :async, row: 2, col: 2, sizex: 1, sizey: 1, title: 'Dendrogram Radial'},
        {card: :radial_charts, load: :async, title: "People", row: 1, col: 1, sizex: 2, sizey: 1, visualizations: radial_visualizations},
    ]
  end

  def collect_first_data
    [
        { percent: 60, description: 'friends' },
        { percent: 35, description: 'EoE' }
    ]
  end

  def collect_second_data
    {
        percent: 25,
    }
  end

  def collect_third_data
    [
        { percent: 60, description: 'Hours' },
        { percent: 100, description: 'Weeks' },
        { percent: 80, description: 'Days' },
        { percent: 40, description: 'Minutes' },
        { percent: 20, description: 'Seconds' }
    ]
  end

  def render_radial_charts_summary_card
    ""
  end

  def render_radial_charts_detail_card
    ""
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

  def render_bubble_chart_detail_card
    chart_configs = {
        id: :bubble_chart_detail,
        data_url: data_path(:bubble_chart),
        height: 1000,
        width: 1000,
    }
    render_deckster_bubble_chart_card chart_configs
  end

  def render_bubble_chart_data
    render partial: "application/bubble_chart_data"
  end

  def render_cluster_dendrogram_tree_summary_card
    chart_configs = {
        id: :cluster_dendrogram_tree_summary,
        data_url: data_path(:cluster_dendrogram),
        height: 180,
        width: 240,
    }
    render_deckster_cluster_dendrogram_tree_card chart_configs
  end

  def render_cluster_dendrogram_tree_detail_card
    chart_configs = {
        id: :cluster_dendrogram_tree_detail,
        data_url: data_path(:cluster_dendrogram),
        height: 3000,
        width: 1400,
    }
    render_deckster_cluster_dendrogram_tree_card chart_configs
  end

  def render_cluster_dendrogram_radial_summary_card
    chart_configs = {
        id: :cluster_dendrogram_radial_summary,
        data_url: data_path(:cluster_dendrogram),
        radius: 90
    }
    render_deckster_cluster_dendrogram_radial_card chart_configs
  end

  def render_cluster_dendrogram_radial_detail_card
    chart_configs = {
        id: :cluster_dendrogram_radial_detail,
        data_url: data_path(:cluster_dendrogram),
        radius: 750
    }
    render_deckster_cluster_dendrogram_radial_card chart_configs
  end
  
  def render_cluster_dendrogram_data
    render partial: "application/bubble_chart_data"
  end
end