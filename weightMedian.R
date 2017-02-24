weightmedian <- function(directory, day) {
    file_list <- list.files(directory, full.names = TRUE)
    dat <- data.frame()
    for(i in 1:length(file_list)) {
        dat <- rbind(dat,read.csv(file_list[i]))
    }
    dat_subset <- dat[which(dat$Day == day),]
    median(dat_subset$Weight, na.rm = TRUE)
}
