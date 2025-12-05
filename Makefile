CC = gcc
CFLAGS = -Wall -Wextra -std=c99

SRCS = main.c utils.c
OBJS = $(SRCS:.c=.o)
TARGET = example

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
\t$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
\t$(CC) $(CFLAGS) -c $< -o $@

clean:
\trm -f $(OBJS) $(TARGET)