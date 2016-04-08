u1 = User.create(email: "admin@localhost.localdomain", password: "The Admin is an amazing guy", roles: "admin")
m1 = Meeting.create(user: u1, end_at: Time.now + 60.days, name: "The first poll", description: "Poll seeded")
md1 = MeetingDate.create(meeting: m1, date: Time.now + 7.days)
md2 = MeetingDate.create(meeting: m1, date: Time.now + 7.days + 1.hours)
md3 = MeetingDate.create(meeting: m1, date: Time.now + 7.days + 3.hours)
md4 = MeetingDate.create(meeting: m1, date: Time.now + 17.days)
md5 = MeetingDate.create(meeting: m1, date: Time.now + 17.days + 1.hours)
md6 = MeetingDate.create(meeting: m1, date: Time.now + 17.days + 3.hours)
ud1 = UserDate.create(meeting_date: md1, user: u1, state: "yes")
ud2 = UserDate.create(meeting_date: md2, user: u1, state: "no")
ud3 = UserDate.create(meeting_date: md3, user: u1, state: "yes")
ud4 = UserDate.create(meeting_date: md4, user: u1, state: "yes")
ud5 = UserDate.create(meeting_date: md5, user: u1, state: "no")
ud6 = UserDate.create(meeting_date: md6, user: u1, state: "yes")
