# Language: Ruby, Level: Level 3
def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name,characters.motto from characters group by characters.motto  having max(length(characters.motto)) limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species,count(characters.species) from characters GROUP BY SPECIES ORDER BY count(characters.species) DESC limit 1;"
end

def select_name_and_series_subgenres_of_authors
 "select authors.name,subgenres.name from authors inner join series on series.author_id = authors.id inner join subgenres on subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
"select series.title from series inner join characters on characters.series_id = series.id WHERE characters.species = 'human' group by series.title limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.character_id) from characters inner join character_books on character_books.character_id = characters.id group by characters.name ORDER BY count(character_books.character_id) desc"
end
