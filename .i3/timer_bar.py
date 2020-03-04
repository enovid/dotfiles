import os, sys, time


# Path to be created
path = "/home/enovid/.timer_bar_cache"
try:
    os.mkfifo(path)
except OSError as e:
    print(f'[Warning] Failed to create FIFO: {e}')

fifo = open(path, 'w', buffering=1)


def countdown(sec):
    start_sec = sec
    bar_size = 43
    completion_count = 0

    while sec >= 0:
        minutes = sec // 60
        seconds = sec % 60
        time_str = f' {minutes}:{seconds//10}{seconds%10} '
        if start_sec - sec > 0:
            completion_count = int(((start_sec - sec) / start_sec) * bar_size)
        bar = "[" + ''.join('=' for _ in range(completion_count)) + \
              ''.join(' ' for _ in range(bar_size - completion_count)) + "]"
        output = bar + time_str + "\n"

        try:
            fifo.write(output)
        except BrokenPipeError as e:
            print(f'BrokenPipeError: {e}')

        sec -= 1
        time.sleep(1)

    fifo.write('\n')
    os.system('notify-send -t 5000 -u critical "Timer finished."')


if __name__ == '__main__':
    minutes = sys.argv[1]
    countdown(int(minutes)*60)
