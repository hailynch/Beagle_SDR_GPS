//////////////////////////////////////////////////////////////////////////
// Homemade GPS Receiver
// Copyright (C) 2013 Andrew Holme
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// http://www.holmea.demon.co.uk/GPS/Main.htm
//////////////////////////////////////////////////////////////////////////

#ifndef	_TIMING_H_
#define	_TIMING_H_

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

u4_t time_diff(u4_t t1, u4_t t2);
void yield_ms(u4_t msec);
void yield_us(u4_t msec);
void spin_ms(u4_t msec);
void spin_us(u4_t msec);

unsigned Microseconds(void);
unsigned nonSim_Microseconds(void);
void     TimerWait(unsigned ms);
void     nonSim_TimerWait(unsigned ms);
void     TimeruWait(unsigned us);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif
