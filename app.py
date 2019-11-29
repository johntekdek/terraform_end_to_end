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

