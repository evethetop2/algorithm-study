t = int(input())
for i in range(t):
  a,b, = map(int,input().split())
  print(f"Case #{i+1}: ", end="")
  print(a,"+",b,"=",a+b)