def check_fast_lane(minutes_left, items, teacher_pass):

    if teacher_pass:
        return "Fast lane approved"

    elif minutes_left < 10 and items <= 3:
        return "Fast lane approved"

    else:
        return "Use regular line"


students_in_line = [
    {"name": "Marco", "minutes_left": 8, "items": 2, "teacher_pass": False},
    {"name": "Diane", "minutes_left": 15, "items": 1, "teacher_pass": False},
    {"name": "Kyle", "minutes_left": 5, "items": 6, "teacher_pass": False},
    {"name": "Ella", "minutes_left": 20, "items": 5, "teacher_pass": True},
]

approved = 0

for student in students_in_line:

    result = check_fast_lane(
        student["minutes_left"],
        student["items"],
        student["teacher_pass"]
    )

    print(student["name"] + ":", result)

    if result == "Fast lane approved":
        approved += 1

    else:
        print("Minutes left:", student["minutes_left"])
        print("Please use the regular line.")

print()
print("Total approved for fast lane:", approved)

# Explen
# Rule-based systems kailangan ng override conditions kasi may mga rules na mas important kaysa sa iba.
# Sa activity na too, kapag may teachers pass ang student, pwede pa rin siyang gumamit ng fast lane kahit hindi siya pasok sa normal na requirements.
# Kung hindi unang iche-check ang teacher pass, baka maling result ang ibigay ng program at ilagay siya sa regular line.
# Importante rin ang tamang pagkakasunod-sunod ng conditions dahil binabasa ni Python ang `if` statements mula sa taas pababa.
# Halimbawa, kung sarado ang cafeteria para sa cleaning, dapat iyon ang unang i-check dahil walang dapat gumamit ng fast lane kahit may teacher pass pa sila.
# Kaya mahalagang maayos ang order ng rules para tama at consistent ang desisyonis ng program natin eme.