# Public documented-cell index check.
complete <- read.csv(file.path("data_public", "generalized_cell_scores.csv"), stringsAsFactors = FALSE)
stopifnot(sum(complete$priority_complete %in% c(TRUE, "TRUE", "True", "true", 1, "1")) == 58)
corr <- read.csv(file.path("data_public", "priority_index_sensitivity.csv"), stringsAsFactors = FALSE)
stopifnot(round(corr$spearman_rho[1], 4) == 0.9489)
message("Public documented-cell index checks OK")
