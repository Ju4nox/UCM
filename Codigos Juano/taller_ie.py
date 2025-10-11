import random

if __name__=="__main__":
#primera lista
    first_list=[]
    i=0
    while i<3:
        first_list.append(random.randint(1,89))
        i=i+1
    print(first_list)