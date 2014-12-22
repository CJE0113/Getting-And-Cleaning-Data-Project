
## Read training variables
train_x <- read.table("train/X_train.txt")
train_y <- read.table("train/Y_train.txt")
train_sub <- read.table("train/subject_train.txt")

## Read test variables
test_x <- read.table("test/X_test.txt")
test_y <- read.table("test/Y_test.txt")
test_sub <- read.table("test/subject_test.txt")

## combine training and test data sets
compl_x <- rbind(train_x, test_x)
compl_y <- rbind(train_y, test_y)
compl_sub <- rbind(train_sub, test_sub)

## read labels from files
features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")

## Get indices of mean and std dev columns
ptn <- "-(mean|std)\\(\\)"
ndexVec <- grep(ptn, features[,2])

## format y and sub data sets
compl_y[, 1] <- activities[compl_y[, 1], 2]
names(compl_y) <- "activity"
names(compl_sub) <- "subject"

## filter out non mean and std dev measurements
compl_x <- compl_x[,ndexVec]
names(compl_x) <- features[ndexVec,2]

## create one data set
compl_data <- cbind(compl_sub, compl_x, compl_y)

##create tidy data set
averages_data <- ddply(compl_data, .(subject, activity), function(x) colMeans(x[, 2:67]))

## write table to txt file
write.table(averages_data, file="averages_data.txt", row.names = FALSE)

