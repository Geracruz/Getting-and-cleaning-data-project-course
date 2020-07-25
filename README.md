# Getting and cleaning data project course
Project course of coursera certification getting and cleaning data

The datasets used are "features", "activity labels", "subject_test", "x_train", "y_train", "subject_test", "x_test", "y_test".

Features contains the variable names assigned to the columns names of x train and x test.

I merged  a column with the textual information of each activity in the y test and y train tables, based on the encoded number.

Then i joined all the tables related with training and added a new column called training and the same happened with the train datasets.

Finally, i  merged the training and test tables to create the final table and select the collumns with the word mean and std, as the instructions says.