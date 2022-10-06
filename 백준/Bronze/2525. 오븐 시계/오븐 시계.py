a,b = input().split()
c = input()

if int(b) + int(c) < 60:
    a = int(a)
    b = int(b)
    if a < 24:
       print(a, b+int(c))
    elif a >=24:
      print(a-24, b)
    
elif int(b) + int(c) > 60:
    a = int(a)+((int(b)+int(c))//60)
    b = (int(b)+ int(c))%60
    if a < 24:
      print(a, b)
    elif a >= 24:
      print(a-24,b)

else:
    a = int(a)+((int(b)+int(c))//60)
    b = 0
    if a < 24:
      print(a, b)
    elif a >= 24:
      print(a-24, b)