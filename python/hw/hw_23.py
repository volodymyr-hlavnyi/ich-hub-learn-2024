# 1. Напишите программу, которая генерирует и
# выводит квадраты чисел от 1 до N с использованием
# генераторного выражения.
# Реализуйте функцию generate_squares, которая
# принимает число N в качестве аргумента и использует
# генераторное выражение для генерации квадратов чисел.
# Затем выведите квадраты чисел на экран.
#
# Пример работы программы:
#
# 1
# 4
# 9
# 16
# 25
def hw23_1(n):
    def generate_squares(n):
        for x in range(1, 1 + n):
            yield x ** 2

    gen = generate_squares(n)
    for k in range(n):
        print(next(gen))


# 2. Напишите генератор, который будет генерировать бесконечную
# последовательность Фибоначчи. Каждый раз, когда генератор вызывается,
# он должен возвращать следующее число последовательности.
# Напишите программу, которая будет использовать этот
# генератор для вывода первых N чисел Фибоначчи.
#
# Пример вывода:
#
# Введите количество чисел Фибоначчи: 10
# Первые 10 чисел Фибоначчи:
# 0
# 1
# 1
# 2
# 3
# 5
# 8
# 13
# 21
# 34
def hw23_2(n):
    def fibonacci_generator():
        a, b = 0, 1
        while True:
            yield a
            a, b = b, b + a

    fib_gen = fibonacci_generator()
    for i in range(n):
        print(next(fib_gen))


if __name__ == '__main__':
    print('\n23_1', '==' * 10)
    hw23_1(5)

    print('\n23_2', '==' * 10)
    hw23_2(10)
