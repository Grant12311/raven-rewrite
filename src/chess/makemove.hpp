#ifndef MAKEMOVE_H
#define MAKEMOVE_H

#include "move.hpp"
#include "position.hpp"

void makeMove(const Move *move, Position *pos);
void makeMovestr(const std::string& move, Position *pos);
void unmakeMove(const Move *move, Position *pos);
void unmakeMovestr(const std::string& move, Position *pos, int lastcap);
#endif
