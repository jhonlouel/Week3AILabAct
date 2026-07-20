def check_borrowing(overdue_books, status):
    if overdue_books:
        return "Not allowed: overdue books"
    elif status == "suspended":
        return "Not allowed: suspended account"
    else:
        return "Borrowing allowed"


allowed_students = 0

while True:

    name = input("Enter student name (or 'exit' to stop): ").strip()

    if name.lower() == "exit":
        break

    overdue = input("Do you have overdue books? (yes/no): ").strip().lower()
    status = input("Enter status (active/suspended): ").strip().lower()
    books = int(input("How many books do you want to borrow? "))

    has_overdue = overdue == "yes"

    result = check_borrowing(has_overdue, status)

    if result == "Borrowing allowed":

        if books <= 0:
            print(name + ": Invalid number of books.")

        elif books > 3:
            print(name + ": You can only borrow 3 books.")
            allowed_students += 1

        else:
            print(name + ": Borrowing allowed.")
            allowed_students += 1

    else:
        print(name + ": " + result)

    print()

print("Total students allowed to borrow:", allowed_students)

# Question 6

# Kapag nag-type ang estudyante ng "Active", dapat gamitin ang `.lower()` para maging "yes"at "active" ang inputchhh. 
# Sa ganitong paraan, hindi magkakaroon ng error kahit uppercase o lowercase ang pag type ni user.

# Question 7

# Unang chine-check ang overdue books dahil iyon ang pinakamahalagang rule. Kapag may overdue books ang student, hindi siya puwedeng manghiram kahit active pa ang account niya.
# Kung status ang unang iche-check, puwede kasing mag ka mali, baka payagan ng program ang estudyante na may overdue books.

# Question 8

# Kung 0 books ang gustong hiramin ni student, dapat talaga na invalid input sha. Hindi kasi tamang manghiram ng zero books, baliw lang ehh no. 
# Mas ok na magpakita ang program ng error message at hilingin sa user na maglagay ng tamang numbers like 1 books.