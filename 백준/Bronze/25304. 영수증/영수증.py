x=int(input())
n=int(input())
money=0
for i in range(n):
  a,b=map(int,input().split())
  money+=(a*b)

if x==money:
  print("Yes")
else:
  print("No")