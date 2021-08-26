
#include "MakeCrate.as"
#include "MakeSeed.as"

//TODO: this function could take more arguments. What parameters would be useful?
//takes the current game time and returns how long until the player should be allowed to respawn, both in ticks
//this should be a very low value at the start of the game, but much higher as the game gets longer
shared s32 getRespawnTimeDelay(s32 currentGameTimeTicks) {
	//how did I choose the algorithm?
	//Decided on a set of points that I want to follow
	// Game Time	|  Respawn Delay
	// 	0	|	0
	// 	1	|	1
	// 	2	|	4
	// 	4	|	8
	// 	6	|	16
	// 	8	|	20
	// 	10	|	30
	// 	14	|	40
	// 	20	|	60
	//put this series into excel, and fit some graphs to the data
	//I thought it would be exponential or quadratic or something else curved, but linear seems to be good enough to start with
	/* print("current time "+ currentGameTimeTicks);
	print("current time secs"+ currentGameTimeTicks / getTicksASecond());
	print("respawn time "+ 0.05 * currentGameTimeTicks);
	print("respawn time secs"+ (0.05 * currentGameTimeTicks) / getTicksASecond()); */
	//return 0.05 * currentGameTimeTicks;
	//the above seems a bit big, how long should a game be, and how of a respawn causes the game to end?
	//15-20 min game? 30 seconds needed to end? Depends on materials balance and structures built
	return 0.035 * currentGameTimeTicks;
	//formula -> S = M * 60 * 0.035
}
