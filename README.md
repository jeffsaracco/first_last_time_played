first_last_time_played
======================

Looking at a phish "First/Last Time seen" song page at http://www.ihoz.com/firstlast.html
I wanted to be able to sort the data to see what the least/most recent song played was.

I use a rake task `rake refresh` to refresh the data in the database, which scrapes the page with Nokogiri
Then use the gem `handles_sortable_columns` and twitter bootstrap to display the data in a sortable table.
