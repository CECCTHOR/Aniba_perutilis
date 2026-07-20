# Public aggregate quality checks.
q <- read.csv(file.path("data_public", "quality_flag_summary.csv"), stringsAsFactors = FALSE)
stopifnot(any(q$label == "Missing coordinates" & q$total_flagged == 99))
stopifnot(any(q$label == "Coordinate uncertainty missing" & q$total_flagged == 1479))
message("Public quality checks OK")
