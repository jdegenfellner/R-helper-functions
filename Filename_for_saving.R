library(clipr)

# Set working directory to source file location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

repl <- function(string, limit = 60){
  string <- gsub(" ", "_", string)
  string <- gsub(":", "-", string)
  string <- gsub(";", "-", string)
  string <- gsub("/", "-", string)
  string <- gsub("\n", "_", string)
  if(!missing(limit)){
    string <- substr(string, 1, limit)
  }
  print(string)
  write_clip(
    string,
    object_type = "character")
}

repl("Power and sample size analysis
for longitudinal mixed models of health
in populations exposed to environmental
contaminants")


repl_no_line_breaks <- function(string){
  string <- gsub("\n", " ", string)
  write_clip(
    string,
    object_type = "character")
}

repl_no_line_breaks("Shift Workers Have Higher Blood Pressure Medicine Use, But Only
When They Are Short Sleepers: A Longitudinal UK Biobank Study")
