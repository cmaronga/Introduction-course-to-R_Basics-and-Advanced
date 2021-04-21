# load built in data
data("mtcars")
?mtcars

data("iris")
?iris

# exporting data
write.csv(
  data_to_eport, # object to export
  "filename_path.csv", # path and file name of the destination
)

# actual exporting
write.csv(iris,
          "iris_exported_data.csv")

# defining a different
write.csv(iris,
          "C:/Users/cmaronga/Desktop/iris_exported_data.csv")


# optional arguments
write.csv(iris,
          "iris_exported_data.csv",
          row.names = F)


