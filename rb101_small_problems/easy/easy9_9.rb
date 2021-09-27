GRADES = { 90..   => 'A',
           80..89 => 'B',
           70..79 => 'C',
           60..69 => 'D',
           0..59  => 'E' }

def get_grade(s1, s2, s3)
  average = (s1 + s2 + s3) / 3
  GRADES.select { |grade| grade.include?(average) }.values.first
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(95, 110, 120) == "A"