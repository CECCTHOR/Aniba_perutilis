# Public data audit for generalized Aniba perutilis outputs.
source <- read.csv(file.path("data_public", "data_source_provenance_public.csv"), stringsAsFactors = FALSE)
stopifnot(any(source$source == "GBIF July 2026 occurrence download" & source$unique_rows_contributed == 1570))
stopifnot(any(grepl("10.15468/dl.u48xgy", source$persistent_identifier)))
message("Public provenance audit OK")
