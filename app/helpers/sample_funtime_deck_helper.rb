module SampleFuntimeDeckHelper
  def render_sample_funtime_deck
    deck_config = {id: 'party', controls: ['refresh', 'search']}
    people_visualizations = [
        {id: 'friends_radial_chart', type: 'radial', title: 'Friends', data_source: 'collect_friends_data', description: 'friend desc', showLegend: false, theme: 'green', style: 'concentric'},
        {id: 'enemies_radial_chart', type: 'radial', title: 'Enemies', data_source: 'collect_enemies_data', description: 'enemy desc'},
        {id: 'time_radial_chart', type: 'radial', title: 'Time', data_source: 'collect_time_data', sort: true},
    ]
    ice_cream_visualizations = [
        {id: 'icecream_radial_chart', type: 'radial', title: 'Ice Cream', data_source: 'collect_icecream_data', description: 'Flavors', style: 'cumulative'},
    ]

    render_deckster_deck deck_config, [
        {card: :balloons, load: :async, title: "Balloons", row: 1, col: 2, sizex: 1, sizey: 1, sharedView: true}, #example sharedView
        {card: :streamers, load: :async, title: "Streamers", row: 1, col: 2, sizex: 1, sizey: 1}, #example with extended popover
        {card: :cupcakes, load: :async, title: "Cupcakes", row: 1, col: 2, sizex: 1, sizey: 1},
        {card: :pinata, load: :async, title: "Pinata", row: 1, col: 2, sizex: 1, sizey: 1},
        {card: :beer, load: :async, title: "Beer", row: 1, col: 2, sizex: 1, sizey: 1, display: 'none'}, #example of hidden card
        {card: :music, load: :async, title: "Music", row: 1, col: 2, sizex: 1, sizey: 1, display: 'none'}, #example of hidden card
        {card: :people, load: :async, title: "People", row: 1, col: 1, sizex: 2, sizey: 1, visualizations: people_visualizations},
        {card: :icecream, load: :async, title: "Ice Cream", row: 1, col: 1, sizex: 1, sizey: 1, visualizations: ice_cream_visualizations}
    ]
  end

  def collect_icecream_data
    [
      { percent: 20, description: 'Vanilla'},
      { percent: 50, description: 'Chocolate'},
      { percent: 30, description: 'Strawberry'}
    ]
  end

  def render_icecream_summary_card
    ""
  end

  def render_icecream_detail_card
    ""
  end

  def collect_time_data
    [
        { percent: 60, description: 'Hours' },
        { percent: 100, description: 'Weeks' },
        { percent: 80, description: 'Days' },
        { percent: 40, description: 'Minutes' },
        { percent: 20, description: 'Seconds' }
    ]
  end

  def collect_friends_data
    [
        { percent: 60, description: 'friends' },
        { percent: 35, description: 'EoE' }
    ]
  end

  def collect_enemies_data
    {
        percent: 25,
    }
  end

  def render_people_summary_card
    ""
  end

  def render_people_detail_card
    ""
  end

  def render_balloons_shared_card
    "#{Time.now.strftime('%H:%M:%S')} These balloons do not change between summary and detail view"
  end

  def render_streamers_summary_card
    render partial: 'application/partial_with_popover'
  end

  def render_streamers_detail_card
    "#{Time.now.strftime('%H:%M:%S')} MORE streamers!".html_safe
  end

  def render_cupcakes_summary_card
    "#{Time.now.strftime('%H:%M:%S')} A cute cupcake display.".html_safe
  end

  def render_cupcakes_detail_card
    "#{Time.now.strftime('%H:%M:%S')} Cupcake MOUNTAIN!".html_safe
  end

  def render_pinata_summary_card
    "#{Time.now.strftime('%H:%M:%S')} A rainbow dinosaur, decorated with layers of crepe paper and sickening amounts of love".html_safe
  end

  def render_pinata_detail_card
    "#{Time.now.strftime('%H:%M:%S')} *candy falls out*!".html_safe
  end

  def render_beer_summary_card
    "#{Time.now.strftime('%H:%M:%S')} So you want it to be THIS kind of party, huh? Beer is only available to those 21 and older. ".html_safe
  end

  def render_beer_detail_card
    "#{Time.now.strftime('%H:%M:%S')} You find a large keg upstairs, sitting in a bathtub of ice. It strangely has a slice through its midsection, and a note on the vanity reads 'get yourself to a hospital.'".html_safe
  end

  def render_music_summary_card
    "#{Time.now.strftime('%H:%M:%S')} Good music is heard and not seen.".html_safe
  end

  def render_music_detail_card
    "#{Time.now.strftime('%H:%M:%S')} If you're happy and you know it, clap your hands. (clap) (clap)".html_safe
  end
end
