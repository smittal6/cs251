
complete_data=read.csv("leaves.csv")
#complete_data

#now let us extract the data according to species.
#Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, Species, Good
#First for setosa
setosa_data=complete_data[complete_data$Species="setosa",]
smeansl=mean(setosa_data["Sepal.Length"])
smeansw=mean(setosa_data["Sepal.Width"])
smeanpl=mean(setosa_data["Petal.Length"])
smeanpw=mean(setosa_data["Petal.Width"])

#Now, for versicolor
ve_data=complete_data[complete_data$Species="versicolor",]
vemeansl=mean(ve_data["Sepal.Length"])
vemeansw=mean(ve_data["Sepal.Width"])
vemeanpl=mean(ve_data["Petal.Length"])
vemeanpw=mean(ve_data["Petal.Width"])

#for virginica
vi_data=complete_data[complete_data$Species="virginica",]
vimeansl=mean(vi_data["Sepal.Length"])
vimeansw=mean(vi_data["Sepal.Width"])
vimeanpl=mean(vi_data["Petal.Length"])
vimeanpw=mean(vi_data["Petal.Width"])

##for good class, storing all the data
good_data=summary(complete_data[complete_data$Good=="good",])


