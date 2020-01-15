def check(mark):
    if mark > 100:
        return None
    elif mark >= 80:
        return 4.00
    elif mark >= 75:
        return 3.75
    elif mark >= 70:
        return 3.50
    elif mark >= 65:
        return 3.25
    elif mark >= 60:
        return 3.00
    elif mark >= 55:
        return 2.75
    elif mark >= 50:
        return 2.50
    elif mark >= 45:
        return 2.25
    elif mark >= 40:
        return 2.00
    elif mark < 40:
        return 0.00
    else:
        return None

