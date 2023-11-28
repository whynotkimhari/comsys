<#
    NAME: BUI NGUYEN KIM HAI
    NEPTUN ID: QMIBHU
#>

# VARIABLES
$teamsData = Get-Content "./teams.dat"
$studentsData = Get-Content "./students.dat"

$instruction = $args[0]
$param = $args[1..($args.Length-1)]
$size = $args.Length

# FUNCTIONS
function usage {
    Write-Host "Usage:
        -list 'teacher name': produces the names of the courses belonging to the teacher
        -student 'student name': give the list of instructors who teaches the student
        -max: give the name of the teacher who has the most courses.
    "
    exit
}


function list {
    if($param -eq $instruction) {
        "Missing teacher's name!"
        exit
    }
    $str = "Courses that $param teach:`n"
    foreach($line in $teamsData) {
        if($line.Split(',')[2] -eq $param) {
            $course = $line.Split(',')[0]
            $str += " - $course`n"
        }
    }

    if($str -eq "Courses that $param teach:`n") { "There is no teacher named $param in data!" }
    else { $str }
}

function student {
    if($param -eq $instruction) {
        "Missing student's name!"
        exit
    }
    $str = "Teachers who teach $param are:`n"
    $teachers = @()
    foreach($line in $studentsData) {
        if($line.Split(',')[0] -eq $param) {
            foreach($courseCode in $line.Split(',')[1..($line.Length-1)]) {
                foreach($l in $teamsData) {
                    if($l.Split(',')[1] -eq $courseCode) {
                        $teacher = $l.Split(',')[2]
                        $teachers += @{name=$teacher}
                    }
                }
            }
        }
    }

    $teachers.Values | Select-Object -Unique | ForEach-Object {$str += " - $_`n"}
    
    if($str -eq "Teachers who teach $param are:`n") { "There is no student named $param in data!" }
    else { $str }
}


function max {
    $uniqTeachers = @()
    foreach($l in $teamsData) {
        $teacher = $l.Split(',')[2]
        $uniqTeachers += @{name=$teacher}
    }
    $uniqTeachers = $uniqTeachers.Values | Select-Object -Unique

    $max = -1
    $name = ""

    foreach($teacher in $uniqTeachers) {
        $cnt = 0
        foreach($line in $teamsData) {
            if($line.Split(',')[2] -eq $teacher) { $cnt++ }
        }
        
        if($cnt -gt $max) {
            $max = $cnt
            $name = $teacher
        }
    }

    "The teacher who has the most courses is: $name with $max courses"
}

# Main
if($size -eq 0) { usage }

if($instruction -eq "-list") { list }

elseif($instruction -eq "-student") { student }

elseif($instruction -eq "-max") { max }

else { usage }