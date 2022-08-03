def solution(array, commands):
  answer = [sorted(array[(commands[i][0]-1): commands[i][1]])[commands[i][2]-1] for i in range(len(commands))]
  return answer