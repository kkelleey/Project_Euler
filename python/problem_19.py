#Problem 19
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

jan_first = 2
total_sundays = 0

year = 1901

def get_sundays(jan_first, year):
    sundays_on_first = 0
    months = {'January': 31,
              'February': 28,
              'March': 31,
              'April': 30,
              'May' : 31,
              'June' : 30,
              'July': 31,
              'August': 31,
              'September': 30,
              'October' : 31,
              'November': 30,
              'December': 31
              }
    if year%4 == 0:
        months['February'] = 29
    first_of_month = jan_first
    for month in months:
        if first_of_month == 0:
            sundays_on_first += 1
        first_of_month = (first_of_month + months[month]) % 7
    return sundays_on_first, first_of_month
    

for year in range(1901,2000):
    sundays, jan_first = get_sundays(jan_first, year)
    total_sundays += sundays

print total_sundays
    
