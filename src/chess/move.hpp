#ifndef MOVE_H
#define MOVE_H

#include <string>

constexpr int MAX_MOVES = 2048;

enum MOVETYPE { NORMAL, DOUBLE, CAPTURE, EN_PASSANT, PROMO, PROMO_CAPTURE, KSC, QSC };

struct Move {
	int from;
	int to;
	int prom;
	int piece;
	int cappiece;
	int type;
};
std::string movetostr(Move move);

#endif
