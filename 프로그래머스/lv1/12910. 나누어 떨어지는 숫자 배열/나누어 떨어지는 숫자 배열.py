def solution(arr, divisor):
    answer = [arr[i] for i in range(len(arr)) if arr[i] % divisor == 0]
    if len(answer) != 0:
        answer.sort()
        return answer
    return [-1]
    