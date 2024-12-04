r <- 2 #global variable
volume <- function(r) {
  4/3*pi*r^3
}
# Fixed codes for volume vector 
volume_vector <- function(r) { 
  volumes <- numeric()  # initialize an empty vector to store volumes
  for (i in 1:3) { 
    volumes[i] <-  volume(r^i)  # calculate the volume for r, r^2, r^3
  }
  return(volumes)  # return the vector of volumes
}

#suggested sol by UOL
volume_vector2 <- function(r) { 
  volumes2 <- c(0, 0, 0) # initialize an empty vector to store volumes
  volumes <- vector(mode = "double", length = 3)
  for (pw in 1:3) { 
    volumes2[pw] <- c(volumes2, volume(r^pw))  # calculate the volume for r, r^2, r^3
  }
  return(volumes2)  # return the vector of volumes
}

volume_vector(r)
volume_vector2(r)

