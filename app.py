def bisection_iter(n,arr):
    start = 0
    stop = len(arr)-1    
    #print(arr[mid])
    while start <= stop:
        mid = (start + stop )// 2
        if n == arr[mid]:
            return f"{n} found at position : {mid}"
        elif n > arr[mid]:
            start = mid+1
        else:
            stop = mid - 1

    return f"{n} not found in list"

def create_list(max_val):
    arr = []
    for num in range(1,max_val+1):
        arr.append(num)

    return arr


l = create_list(10)
for num in range(16):
    print(bisection_iter(num,l))






class Library:
    def __init__(self,listOfBooks):
        self.availablebooks=listOfBooks

    def displayAvailablebooks(self):
        print("The Books we have Available in our Library are:")
        for book in self.availablebooks:
            print(book)

    def lendBook(self,requestedbook):
        if requestedbook in self.availablebooks:
            print("you have now borrowed it")
        else:
            print( "Sorry , it is not in stock at this momment")


class Student:
    def requestBook(self):
        print("enter the name of the book you would like to check out")
        self.book = input()
        return self.book

    def returnBook(self):
        print("enter the book you wish to return")
        self.book= input()
        return self.book

def main():
    library=Library(["The last battle","the best game","who is jeez"])
    student=Student()







