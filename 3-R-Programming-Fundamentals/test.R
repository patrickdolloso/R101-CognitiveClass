# test
isGoodRating <- function(rating, threshold = 7){
    if (rating < threshold) {
        return("NO")
    }
    else {
        return("YES")
    }
}

isGoodRating(8)

## Function within a Function

watchMovie <- function(moviename, my_treshold = 7){
    rating <- mu_data[my_data[,1]] == moviename, "average rating" isGoodRating(rating, threshold = my_treshold)
}