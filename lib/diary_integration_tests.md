
# 1 Create new diary instance, add entries and report all entries

diary_22 = Diary.new
entry1 = DiaryEntry.new(title,contents)
entry2 = DiaryEntry.new(title,contents)
diary_22.add(entry1)
diary_22.add(entry2)
diary_22.all
# => returns [entry1, entry2]

# 2 Create new diary instance, add entries and count words

journal = Diary.new
monday = DiaryEntry.new(title,contents)
tuesday = DiaryEntry.new(title,contents)
wednesday =DiaryEntry.new(title,contents)
journal.add(monday)
journal.add(tuesday)
journal.add(wednesday)
journal.count_words # This should make use of the DiaryEntry count words method
# => integer of total words for all diary entries

# 3 Create new diary instance, add entry calculate reading time 

dear_diary = Diary.new
secrets = DiaryEntry.new(titles,contents)
gossip = DiaryEntry.new(title,contents)
dear_diary.add(secrets)
dear_diary.add(gossip)
dear_diary.reading_time(60) * 60 indicates reading speed of 60 words per minute
# => integer showing the time in minutes to read ALL diary entries

# 4 Create new diary instance, add entries and find best entry for reading time

diary = Diary.new
short_entry = DiaryEntry.new(title,contents)
long_entry = DiaryEntry.new(title,contents)
diary.add(short_entry)
diary.add(long_entry)
diary.find_best_entry_for_reading_time(30, 10) * 30 indicates reading speed of 30 words per minute, 10 is amount of minutes the user has to read

# => instance of diary entry closest to but not over the total reading time (e.g. 300 words in 10 minutes)
