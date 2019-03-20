def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE books.series_id=1
  ORDER BY books.year ASC"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY length(characters.motto) DESC
  LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.name)
  FROM characters
  GROUP BY characters.species
  ORDER BY COUNT(characters.name) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  # "SELECT authors.name, subgenres.name
  # FROM authors, subgenres, series
  # LEFT JOIN (
  #   SELECT subgenres.name
  #   FROM subgenres, series
  #   WHERE series.subgenre_id=subgenres.id
  #   ORDER BY series.id ASC
  # )
  # ON authors.id=series.author_id
  # GROUP BY authors.name"
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  JOIN subgenres
  ON series.subgenre_id=subgenres.id
  WHERE authors.id=series.author_id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
