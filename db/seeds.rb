landmarks_list = {
    "BQE" => {
      :figure_id => 1,
      :year_completed => 1947
    },
    "Holland Tunnel" => {
      :figure_id => 5,
      :year_completed => 1927
    },
    "Wall Street Wall" => {
      :figure_id => 4,
      :year_completed => 1684
    },
    "Brooklyn Battery Tunnel" => {
      :figure_id => 10,
      :year_completed => 1973
    }
  }

landmarks_list.each do |name, landmark_hash|
  p = Landmark.new
  p.name = name
  landmark_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

figure_list = {
    "Robert Moses" => {
    },
    "Al Smith" => {
    },
    "Theodore Roosevelt" => {
    },
    "Peter Stuyvesant" => {
    },
    "Boss Tweed" => {
    },
    "Michael Bloomberg" => {
    },
    "Ed Koch" => {
    },
    "Fiorello LaGuardia" => {
    },
    "Jimmy Walker" => {
    },
    "Belle Moskowitz" => {
    }
  }

figure_list.each do |name, figure_hash|
  p = Figure.new
  p.name = name
  p.save
end


title_list = {
    "Mayor" => {
    },
    "President" => {
    },
    "Governor" => {
    },
    "NYC Parks commissioner" => {
    },
  }

title_list.each do |name, figure_hash|
  p = Title.new
  p.name = name
  p.save
end

figure_title_list = {
  1 => {
    :title_id => 3,
    :figure_id => 2
  },
  2 => {
    :title_id => 3,
    :figure_id => 3
  },
  3 => {
    :title_id => 2,
    :figure_id => 3
  },
  4 => {
    :title_id => 1,
    :figure_id => 9
  },
  5 => {
    :title_id => 4,
    :figure_id => 1
  }
}

figure_title_list.each do |id, hash|
  p = FigureTitle.new
  hash.each do |attribute, value|
    p[attribute] = value
  end
  p.save
end
