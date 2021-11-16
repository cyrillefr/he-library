Author.create!(
  [
    {
      name: "Philip K Dick",
      year_of_birth: "1928"
    },
    {
      name: "James Ellroy",
      year_of_birth: "1948"
    }
  ]
)

Book.create!(
  [
    {
      title: "The black Dahlia",
      year_of_writing: "1987",
      author_id: 1
    },
    {
      title: "American Tabloid",
      year_of_writing: "1995",
      author_id: 1
    }
  ]
)
