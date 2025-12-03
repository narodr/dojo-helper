N = int(input())

for _ in range(N):
    line = [int(x) for x in input().split()]

    result = sum(line)

    print(result)