/*
Copyright (C) 2007 <SWGEmu>

This File is part of Core3.

This program is free software; you can redistribute
it and/or modify it under the terms of the GNU Lesser
General Public License as published by the Free Software
Foundation; either version 2 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for
more details.

You should have received a copy of the GNU Lesser General
Public License along with this program; if not, write to
the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

Linking Engine3 statically or dynamically with other modules
is making a combined work based on Engine3.
Thus, the terms and conditions of the GNU Lesser General Public License
cover the whole combination.

In addition, as a special exception, the copyright holders of Engine3
give you permission to combine Engine3 program with free software
programs or libraries that are released under the GNU LGPL and with
code included in the standard release of Core3 under the GNU LGPL
license (or modified versions of such code, with unchanged license).
You may copy and distribute such a system following the terms of the
GNU LGPL for Engine3 and the licenses of the other code concerned,
provided that you include the source code of that other code when
and as the GNU LGPL requires distribution of source code.

Note that people who make modified versions of Engine3 are not obligated
to grant this special exception for their modified versions;
it is their choice whether to do so. The GNU Lesser General Public License
gives permission to release a modified version without this exception;
this exception also makes it possible to release a modified version
which carries forward this exception.
*/

#ifndef MELEE1HFRENZY1COMMAND_H_
#define MELEE1HFRENZY1COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "CombatQueueCommand.h"


class Melee1hFrenzy1Command : public CombatQueueCommand {
public:

	Melee1hFrenzy1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isOneHandMeleeWeapon()) {
			return INVALIDWEAPON;
		}

		int duration = 10;
		int cooldown = 45;
		uint32 buffcrc = BuffCRC::FORCE_RANK_SUFFERING;
		uint32 buffcrc2 = BuffCRC::FORCE_RANK_SERENITY;
		ManagedReference<Buff*> buff = new Buff(creature, buffcrc, duration, BuffType::JEDI);
		ManagedReference<Buff*> buff2 = new Buff(creature, buffcrc2, cooldown, BuffType::JEDI);

		if (creature->hasBuff(buffcrc2)) {
			creature->sendSystemMessage("You are to tired to enter a frenzy!");
		}
		else if (!creature->hasBuff(buffcrc2)) {
			int actionCost = 400;
			ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
			if (creature->getHAM(CreatureAttribute::ACTION) < actionCost) {
				creature->sendSystemMessage("You don't have enough action to preform this ability");
				return false;
			}
			creature->inflictDamage(creature, CreatureAttribute::ACTION, actionCost, false);
			creature->sendSystemMessage("You enter a frenzy!");
			buff->setSkillModifier("frenzy", 25);
			buff->setSpeedMultiplierMod(0.5f);
			creature->addBuff(buff);
			creature->addBuff(buff2);
			creature->playEffect("clienteffect/fencer_frenzy.cef", "");
			}else {
				creature->sendSystemMessage("You cannot enter a frenzy at this time.");
			}
			
		return SUCCESS;
	}

};

#endif //MELEE1HFRENZY1COMMAND_H_
