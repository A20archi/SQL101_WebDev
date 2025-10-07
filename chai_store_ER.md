``` mermaid
user[icon:user]{
_id string pk
name string
email string unique
password string
userType enum "student" "instructor" "admin"
isPaid boolean
enrolledCourses ObjectId[] courses
createdAt Date
updatedAt Date
}

courses[icon:book]{
_id string pk
title string
description string
price number
instructorId ObjectId[] user
category string
tags string[] 
durationInHours number
videos ObjectId[] videos
createdAt Date
updatedAt Date
}

videos[icon:video]{
_id string pk
courseId ObjectId courses
title string
description string
url string
durationinMinutes number
createdAt Date
updatedAt Date

}


enrollments[icon:user]{
_id string pk
userId ObjectId user
courseId ObjectId courses
enrollmentDate Date
progress number
createdAt Date
completedAt Date
updatedAt Date
}


enrollments.userId > user._id
courses._id <enrollments._id
enrollments._id > courses._id
courses._id < videos.courseId
users._id < courses.instructorId

```


