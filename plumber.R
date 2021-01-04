library(plumber)

#* @apiTitle Health Check

#* Basic Health Check
#* @get /basic
function() {
    x <- system(command = "ls -al $HOME", intern = TRUE)
    list(msg = paste0("The message is: '", x[2], "'"))
}
