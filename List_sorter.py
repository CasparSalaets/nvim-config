num = 141592653589793238466433832795028841971693993751058209749445923078164062862089986280348253421170679
string = str(num)
inputList = []
for digit in string:
    inputList.append(string[int(digit)])

def sortList(workingList):
    output = []
    for i in range(len(workingList)):
        output.append(workingList[workingList.index(min(workingList))]) # adds the smallest element of the workingList to output using the indexReturn function
        workingList.pop(workingList.index(min(workingList)))
    return output


# alternatief voor index()
'''
def indexReturn(list): # returns the index of the smalles element in the list
    minList = min(list)

    for i in range(len(list)):
        index = int()
        if list[i] == minList:
            index = i
            break
        else:
            continue
    return index
'''
def indexReturn(list): # returns the index of the smalles element in the list
    minList = min(list)

    for i in range(len(list)):
        index = int()
        if list[i] == minList:
            index = i
            break
        else:
            continue
    return index

#calls the sortList function

if __name__ == '__main__':
    print(sortList(inputList))
