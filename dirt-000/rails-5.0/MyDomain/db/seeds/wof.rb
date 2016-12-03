['Around the House','Before & After','Character','Fun & Games','Food & Drink','In the Kitchen','Living Thing(s)','Movie Quote','TV Quote','Occupation(s)','Phrase(s)','Rhyme Time','Same Letter','Same Name','Song Lyrics','Things','What Are You Doing?'].each do |cat|
    Wof::PuzzleCategory.create name: cat
end
