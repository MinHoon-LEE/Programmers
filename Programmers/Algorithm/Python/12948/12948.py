def solution(phone_number):
    answer = ''
    phone_number = list(phone_number)
    for i in range(len(phone_number)):
        if i < len(phone_number) - 4:
            answer += '*'
        else:
            answer += phone_number[i]
    return answer
