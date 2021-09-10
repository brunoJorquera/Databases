log_file = open("um-server-01.txt") 
# Line 1 is opening a file and naming that open file on .py as "log_file"

# Line 5 is a function named sales_reports and is calling log_file
def sales_reports(log_file):
#Line 7 is a for in loop that is checking the file for specific content 
    for line in log_file:
# Line 9 is stating that whatever is going to be called will have the space removed via .rstrip(), the contents are empty, stating that a space will be removed
        line = line.rstrip()
# Line 11 is identifying the specific location of desired text
        day = line[0:3]
# Line 13 is an if statement that if found to be true (if the day is tuesday), the line will be printed 
        if day == "Mon":
            print(line)

# This is calling the function
sales_reports(log_file)
