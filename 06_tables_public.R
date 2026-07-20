# Public table rebuild from aggregate files.
dir.create("tables", showWarnings = FALSE)
for (f in list.files("data_public", pattern = "\\.csv$", full.names = TRUE)) {
  write.csv(read.csv(f, stringsAsFactors = FALSE), file.path("tables", basename(f)), row.names = FALSE)
}
message("Public tables rebuilt")
