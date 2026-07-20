# Public spatial diagnostics from aggregate summaries only.
nn <- read.csv(file.path("data_public", "nearest_neighbour_diagnostics.csv"), stringsAsFactors = FALSE, check.names = FALSE)
stopifnot(any(nn$analytical_unit == "occurrence-event representatives"))
stopifnot(any(nn$analytical_unit == "unique geographic coordinate pairs"))
message("Public spatial diagnostics OK")
