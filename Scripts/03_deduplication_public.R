# Public deduplication summary.
s1 <- read.csv(file.path("data_public", "deduplication_counts.csv"), stringsAsFactors = FALSE)
expected <- c(database_records = 1570, spatial_event_eligible_database_records = 1447, occurrence_event_representatives = 946, inferred_physical_specimens = 392, coordinate_date_groups = 801)
for (nm in names(expected)) stopifnot(s1$value[s1$count_name == nm] == expected[[nm]])
message("Public deduplication counts OK")
