#1 Initialize new diary, add entries and report all entries

diary_22 = Diary.new
entry1 = DiaryEntry.new(title,contents)
entry2 = DiaryEntry.new(title,contents)
diary_22.add(entry1)
diary_22.add(entry2)
diary_22.all