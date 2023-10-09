
if __name__ == "__main__":
    # 5m51.796s
    total = 0
    limit = 6_074_000_999
    for number in range(limit):
        total += number
    print(f"{total=}")
