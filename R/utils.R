as_POSIXct_hex = function(x) {

    # Check input
    if (!is.character(x)) stop("Input must be of class 'character'")
    if (!all(nchar(x) == 8)) stop("Input must be a string of 8 characters")

    # Convert into POSIXct
    timestamp = strtoi(x, 16L)
    posix_ct  = as.POSIXct(timestamp, origin = "1970-01-01")
    return(posix_ct)
}