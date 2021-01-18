#' @export
make_sonnet <- function(ref_text = NULL) {

# TODO: Ensure incoming text is cleaned
#       - extraneous whitespace is removed
#       - clean up linebreak
#       - lowercase all text
#       - ensure that all unicode text is in correct encoding
#       - remove any markup (e.g., HTML tags, etc.)

# TODO: Analyze incoming text for sentiment
#       - generate tokens from text
#       - do stemming
#       - generate graph model for poetic form

# TODO: Get text resources
#       - labeled data for syllabification
#       - get sentiment corpus for all words
#       - get word origin corpus (labelled with first usage years)
#       - get word types, classifications (multiple labels per word)

#TODO: Get details of how to construct a Pushkin sonnet
#      - get rhyme scheme
#      - get meter for each line

  text_words <-
    strsplit(ref_text, split = " ") %>%
    unlist() %>%
    remove_literal_character(char = ".") %>%
    remove_literal_character(char = ",") %>%
    tolower()

}

remove_literal_character <- function(x, char) {

  gsub(pattern = char, replacement = "", x, fixed = TRUE)
}

