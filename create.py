import random as rd

def table():
    
    for i in range(81):
        a = rd.randint(0,3000)
        b = rd.randint(0,3000)
        c = rd.randint(0,3000)
        
        print("(INSERT INTO Stats VALUES(",i,",",a,",",b,",",c,"))")
    
if __name__ == '__main__':
    
    print(table())
    