# Ruby OO Review

* Student
	* Student has a first name, last name
	* `Student#initialize`
	* `Student.all`
	* `Student#full_name`
	* `Student#add_lecture`
	* `Student#lectures`
	* `Student#num_lectures`
	* `Student#classrooms`
	* `Student.find_by_full_name`

* Classroom
	* Classroom has a name
	* `Classroom#initialize`
	* `Classroom.all`
	* `Classroom#lectures`
	* `Classroom#students`

* Lecture
	* Lecture has a student, classroom, name
	* `Lecture#initialize`
	* `Lecture.all`
	* `Lecture#name`
	* `Lecture#student`
	* `Lecture#classroom`