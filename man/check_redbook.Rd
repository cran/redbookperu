% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_redbook.R
\name{check_redbook}
\alias{check_redbook}
\title{Check Species Names in the Red Book of Endemic Plants of Peru}
\usage{
check_redbook(splist, tax_status = FALSE, max_distance = 0.1)
}
\arguments{
\item{splist}{A character vector containing the species names to be checked.}

\item{tax_status}{Logical value indicating whether to provide taxonomic status information.
If TRUE, it will provide taxonomic status information. If FALSE, it will
provide endemism information.}

\item{max_distance}{Maximum allowed distance for fuzzy matching of species names.}
}
\value{
A character vector with information about the taxonomic status or endemism
of the provided species names.
}
\description{
This function checks a list of species names against the Red Book of Endemic Plants
of Peru database and provides information about whether a species was recorded as endemic,
its current taxonomic status, and checks for misspelling typos (fuzzy match).
}
\details{
This function checks each species name in the provided list against the
Red Book of Endemic Plants of Peru database. It performs fuzzy matching
based on the specified maximum distance.
The output could inform about taxonomic status:
a) "Accepted name" if the input names recorded are valid,
b) "Updated name", when the input name is currently a synonym,
c) "No opinion", if the current taxonomic status of the input name is undefined, and
d) "No info. available" for species names recorded in the Red Book that couldn't
be found in the WCVP database for name status validation. The output
name for this group of species is the name recorded in the original publication.

\if{html}{\out{<div class="sourceCode">}}\preformatted{     The output also returns information about possible misspelling,
     adding "fuzzy match" to the output when a typo is found.
}\if{html}{\out{</div>}}
}
\examples{

# Example usage of the function
splist <- c("Aphelandra cuscoenses", "Sanchezia capitata",
            "Sanchezia ovata", "Piper stevensi",
            "Verbesina andinaa", "Verbesina andina")

result_tax <- check_redbook(splist, tax_status = TRUE)
print(result_tax)

result_endemism <- check_redbook(splist, tax_status = FALSE)
print(result_endemism)


}
\references{
\href{https://revistasinvestigacion.unmsm.edu.pe/index.php/rpb/issue/view/153}{Red Book of Endemic Plants of Peru}
\href{https://www.nature.com/articles/s41597-021-00997-6#citeas}{The World Checklist of Vascular Plants, a continuously updated resource for exploring global plant diversity.}
\href{https://tnrs.biendata.org/}{Taxonomic Name Resolution Service - TNRS}
\href{http://www.plantsoftheworldonline.org/}{Plants of the World Online - Facilitated by the Royal Botanic Gardens - Kew.}
}
