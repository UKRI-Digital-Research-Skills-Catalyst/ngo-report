# render-all-years.R
# Renders ngo-report-year.qmd once for each year in the Gapminder dataset,
# producing a separate HTML file per year.

years <- c(1952, 1957, 1962, 1967, 1972, 1977, 1982, 1987, 1992, 1997, 2002, 2007)

for (yr in years) {
  quarto::quarto_render(input = "ngo-report-year.qmd",
                        output_file = paste0("ngo-report-", yr, ".html"),
                        execute_params = list(year = yr))
  message("Rendered: ngo-report-", yr, ".html")}
