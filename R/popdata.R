#' popdata() function by VC c/o JDanger
#' This function takes input from the user on allele names and population size
#' It then prints out the genetic variation data

#' @export

popdata <- function(allele1, allele2, popsize){
    allele1 <- readline("Provide name of the first allele - one alphabet only: ")
    allele2 <- readline("Provide name of the second allele: ")
    popsize <- readline("How many individuals in your population?: ")

    print("Possible diploid genotypes are:")
    print(paste0("First Homozygote: ", allele1, allele1, sep=""))
    print(paste0("Heterozygote: ", allele1, allele2, sep=""))
    print(paste0("Second Homozygote: ", allele2, allele2, sep=""))

    homoz1 <- paste(allele1, allele1, sep="")
    hetz <- paste(allele1, allele2, sep="")
    homoz2 <- paste(allele2, allele2, sep="")

    pop <- sample(c(homoz1, hetz, homoz2), popsize, replace=TRUE)

    print("Your sampled population is stored in object 'pop' and looks like this:")
    print(pop)
}
