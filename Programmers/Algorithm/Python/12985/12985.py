def solution(n,a,b):
    answer = 1
    if a > b:
        a,b = b,a
    while not (a + 1 == b and a % 2 == 1):
        a = (a + 1) // 2
        b = (b + 1) // 2
        answer += 1
    return answer
