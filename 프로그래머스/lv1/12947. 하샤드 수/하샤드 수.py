def solution(arr):
  a = 0
  for i in range(len(str(arr))):
    a += int(str(arr)[i])
  if arr % a == 0:
    return True
  return False 