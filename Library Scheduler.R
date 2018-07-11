master_schedule = round(matrix(runif(10 * 5), 10, 5))
student_names = c("Student 1", "Student 2", "Student 3", "Student 4", "Student 5", "Student 6",
                  "Student 7", "Student 8", "Student 9", "Student 10", "Student 11", "Student 12",
                  "Student 13", "Student 14", "Student 15")
master_schedule_names = matrix(NA, 10, 5)

master_schedule

student1 = matrix(5, 10, 5)
student2 = matrix(5, 10, 5)
student3 = matrix(5, 10, 5)
student4 = matrix(5, 10, 5)
student5 = matrix(5, 10, 5)
student6 = matrix(5, 10, 5)
student7 = matrix(5, 10, 5)
student8 = matrix(5, 10, 5)
student9 = matrix(5, 10, 5)
student10 = matrix(5, 10, 5)
student11 = matrix(5, 10, 5)
student12 = matrix(5, 10, 5)
student13 = matrix(5, 10, 5)
student14 = matrix(5, 10, 5)
student15 = matrix(5, 10, 5)

student_schedule_list = list(student1, student2, student3, student4, 
                             student5, student6, student7, student8, student9,
                             student10, student11, student12, student13, 
                             student14, student15)
student_schedule_list

for(i in 1:length(student_schedule_list)){
  student_schedule_list[[i]] = round(matrix(runif(10 * 5), 10, 5))
  }

for(i in 1:length(student_schedule_list)){
  for(j in 1:5){
    for(k in 1:10){
      if(student_schedule_list[[i]][k,j] == master_schedule[k,j] && length(grep(i, master_schedule_names)) < 5){
        master_schedule_names[k,j] = student_names[i]
      }
    }
  }
}

master_schedule_names