###########################################################################
# Joshua C. Fjelstul, Ph.D.
# euqmv R package
###########################################################################

# read in raw ata
weights <- read.csv("data/QMV_weights.csv")

# arrange
weights <- dplyr::arrange(weights, period, desc(member_state_votes), member_state)

# convert dates
weights$period_start_date <- lubridate::ymd(weights$period_start_date)
weights$period_end_date <- lubridate::ymd(weights$period_end_date)

# save data
save(weights, file = "data/weights.RData")

###########################################################################
# end R package
###########################################################################
