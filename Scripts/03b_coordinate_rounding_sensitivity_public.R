# Public aggregate coordinate-rounding sensitivity.
# Exact coordinates are not required and are not released.
scenario <- read.csv(file.path("data_public", "coordinate_rounding_sensitivity_scenario_summary.csv"), stringsAsFactors = FALSE)
checks <- read.csv(file.path("data_public", "coordinate_rounding_sensitivity_validation_checks.csv"), stringsAsFactors = FALSE)
stopifnot(setequal(scenario$rounding_decimals, c(3, 4, 5)))
stopifnot(scenario$occurrence_event_representatives[scenario$rounding_decimals == 5] == 946)
stopifnot(scenario$coordinate_date_groups_representatives[scenario$rounding_decimals == 5] == 801)
stopifnot(all(scenario$documented_50km_cells == 59))
stopifnot(all(checks$status == "PASS"))
message("Public coordinate-rounding sensitivity checks OK")
