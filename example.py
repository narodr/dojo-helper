"""
Para cada línea de entrada devuelve la cantidad de números que son divisibles 
entre 2 pero no entre 7. P.e.: "25 2 3" > "1"
"""

N = int(input())

for _ in range(N):
    line = [int(x) for x in input().split()]

    result = 0
    for number in line:
        if number % 2 == 0 and number % 7 != 0:
            result += 1

    print(result)