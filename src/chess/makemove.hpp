#ifndef MAKEMOVE_H
#define MAKEMOVE_H

#include "move.hpp"
#include "position.hpp"

void makeMove(const Move *move, Position *pos);
void makeMovestr(std::string move, Position *pos);
void unmakeMove(const Move *move, Position *pos);
void unmakeMovestr(std::string move, Position *pos, int lastcap);
#endif