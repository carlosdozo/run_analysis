According to Anguita, D., et. al. (2013), our source of data represent: " experiments [that]  have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

In our reproduction of the information, we have createad the next list of variables. In the table we can see the name in the R code and its description:

Variable	Meaning
"Tiempo_BodyAcelerometro_Media_Z"	Mean time for acceleration of body for X direction
"Tiempo_BodyAcelerometro_Desviacionstand_X"	Mean time for acceleration of body for Y direction
"Tiempo_BodyAcelerometro_Desviacionstand_Y"	Mean time for acceleration of body for Z direction
"Tiempo_BodyAcelerometro_Desviacionstand_Z"	Standard deviation of time for acceleration of body for X direction
 "Tiempo_GravityAcelerometro_Media_X"	Standard deviation of time for acceleration of body for Y direction
 "Tiempo_GravityAcelerometro_Media_Y"	Standard deviation of time for acceleration of body for Z direction
"Tiempo_GravityAcelerometro_Media_Z"	Mean time of acceleration of gravity for X direction
"Tiempo_GravityAcelerometro_Desviacionstand_X"	Mean time of acceleration of gravity for Y direction
"Tiempo_GravityAcelerometro_Desviacionstand_Y"	Mean time of acceleration of gravity for Z direction
"Tiempo_GravityAcelerometro_Desviacionstand_Z"	Standard deviation of time of acceleration of gravity for X direction
 "Tiempo_BodyAcelerometroJerk_Media_X"	Standard deviation of time of acceleration of gravity for Y direction
"Tiempo_BodyAcelerometroJerk_Media_Y"	Standard deviation of time of acceleration of gravity for Z direction
 "Tiempo_BodyAcelerometroJerk_Media_Z"	Mean time of body acceleration jerk for X direction
"Tiempo_BodyAcelerometroJerk_Desviacionstand_X"	Mean time of body acceleration jerk for Y direction
"Tiempo_BodyAcelerometroJerk_Desviacionstand_Y"	Mean time of body acceleration jerk for Z direction
"Tiempo_BodyAcelerometroJerk_Desviacionstand_Z"	Standard deviation of time of body acceleration jerk for X direction
"Tiempo_BodyGiroscopio_Media_X"	Standard deviation of time of body acceleration jerk for Y direction
 "Tiempo_BodyGiroscopio_Media_Y"	Standard deviation of time of body acceleration jerk for Z direction
 "Tiempo_BodyGiroscopio_Media_Z"	Mean body gyroscope measurement for X direction
 "Tiempo_BodyGiroscopio_Desviacionstand_X"	Mean body gyroscope measurement for Y direction
"Tiempo_BodyGiroscopio_Desviacionstand_Y"	Mean body gyroscope measurement for Z direction
"Tiempo_BodyGiroscopio_Desviacionstand_Z"	Standard deviation of body gyroscope measurement for X direction
 "Tiempo_BodyGiroscopioJerk_Media_X"	Standard deviation of body gyroscope measurement for Y direction
"Tiempo_BodyGiroscopioJerk_Media_Y"	Standard deviation of body gyroscope measurement for Z direction
"Tiempo_BodyGiroscopioJerk_Media_Z"	Mean jerk signal of body for X direction
"Tiempo_BodyGiroscopioJerk_Desviacionstand_X"	Mean jerk signal of body for Y direction
"Tiempo_BodyGiroscopioJerk_Desviacionstand_Y"	Mean jerk signal of body for Z direction
"Tiempo_BodyGiroscopioJerk_Desviacionstand_Z"	Standard deviation of jerk signal of body for X direction
 "Tiempo_BodyAcelerometroMagnitud_mean"	Standard deviation of jerk signal of body for Y direction
"Tiempo_BodyAcelerometroMagnitud_std"	Standard deviation of jerk signal of body for Z direction
 "Tiempo_GravityAcelerometroMagnitud_mean"	Mean magnitude of body Acc
 "Tiempo_GravityAcelerometroMagnitud_std"	Standard deviation of magnitude of body Acc
"Tiempo_BodyAcelerometroJerkMagnitud_mean"	Mean gravity acceleration magnitude
 "Tiempo_BodyAcelerometroJerkMagnitud_std"	Standard deviation of gravity acceleration magnitude
"Tiempo_BodyGiroscopioMagnitud_mean"	Mean magnitude of body acceleration jerk
 "Tiempo_BodyGiroscopioMagnitud_std"	Standard deviation of magnitude of body acceleration jerk
"Tiempo_BodyGiroscopioJerkMagnitud_mean"	Mean magnitude of body gyroscope measurement
 "Tiempo_BodyGiroscopioJerkMagnitud_std"	Standard deviation of magnitude of body gyroscope measurement
 "Frecuencia_BodyAcelerometro_Media_X"	Mean magnitude of body body gyroscope jerk measurement
 "Frecuencia_BodyAcelerometro_Media_Y"	Standard deviation of magnitude of body body gyroscope jerk measurement
 "Frecuencia_BodyAcelerometro_Media_Z"	Mean frequency of body acceleration for X direction
"Frecuencia_BodyAcelerometro_Desviacionstand_X"	Mean frequency of body acceleration for Y direction
"Frecuencia_BodyAcelerometro_Desviacionstand_Y"	Mean frequency of body acceleration for Z direction
"Frecuencia_BodyAcelerometro_Desviacionstand_Z"	Standard deviation of frequency of body acceleration for X direction
"Frecuencia_BodyAcelerometro_meanFreq_X"	Standard deviation of frequency of body acceleration for Y direction
"Frecuencia_BodyAcelerometro_meanFreq_Y"	Standard deviation of frequency of body acceleration for Z direction
 "Frecuencia_BodyAcelerometro_meanFreq_Z"	Mean frequency of body accerlation jerk for X direction
 "Frecuencia_BodyAcelerometroJerk_Media_X"	Mean frequency of body accerlation jerk for Y direction
"Frecuencia_BodyAcelerometroJerk_Media_Y"	Mean frequency of body accerlation jerk for Z direction
 "Frecuencia_BodyAcelerometroJerk_Media_Z"	Standard deviation frequency of body accerlation jerk for X direction
"Frecuencia_BodyAcelerometroJerk_Desviacionstand_X"	Standard deviation frequency of body accerlation jerk for Y direction
"Frecuencia_BodyAcelerometroJerk_Desviacionstand_Y"	Standard deviation frequency of body accerlation jerk for Z direction
"Frecuencia_BodyAcelerometroJerk_Desviacionstand_Z"	Mean frequency of body gyroscope measurement for X direction
"Frecuencia_BodyAcelerometroJerk_meanFreq_X"	Mean frequency of body gyroscope measurement for Y direction
"Frecuencia_BodyAcelerometroJerk_meanFreq_Y"	Mean frequency of body gyroscope measurement for Z direction
"Frecuencia_BodyAcelerometroJerk_meanFreq_Z"	Standard deviation frequency of body gyroscope measurement for X direction
"Frecuencia_BodyGiroscopio_Media_X"	Standard deviation frequency of body gyroscope measurement for Y direction
 "Frecuencia_BodyGiroscopio_Media_Y"	Standard deviation frequency of body gyroscope measurement for Z direction
"Frecuencia_BodyGiroscopio_Media_Z"	Mean frequency of body acceleration magnitude
 "Frecuencia_BodyGiroscopio_Desviacionstand_X"	Standard deviation of frequency of body acceleration magnitude
"Frecuencia_BodyGiroscopio_Desviacionstand_Y"	Mean frequency of body acceleration jerk magnitude
"Frecuencia_BodyGiroscopio_Desviacionstand_Z"	Standard deviation of frequency of body acceleration jerk magnitude
 "Frecuencia_BodyGiroscopio_meanFreq_X"	Mean frequency of magnitude of body gyroscope measurement
"Frecuencia_BodyGiroscopio_meanFreq_Y"	Standard deviation of frequency of magnitude of body gyroscope measurement
"Frecuencia_BodyGiroscopio_meanFreq_Z"	Mean frequency of magnitude of body gyroscope jerk measurement
"Frecuencia_BodyAcelerometroMagnitud_mean"	Standard deviation frequency of magnitude of body gyroscope jerk measurement

