# Public figure inventory check.
figs <- list.files("figures", pattern = "\\.(png|jpg|tiff)$", full.names = TRUE)
stopifnot(length(figs) >= 10)
message("Public figures available: ", length(figs))
