// Author: Seefo

#ifndef SEEFO_BH_SUI_CALLBACK
#define SEEFO_BH_SUI_CALLBACK

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"

class BountyHuntSuiCallback : public SuiCallback {

public:
	BountyHuntSuiCallback(ZoneServer* serv) : SuiCallback(serv) {

	}

	void run(CreatureObject* creature, SuiBox* sui, bool cancelPressed, Vector<UnicodeString>* args) {

		if (!sui->isInputBox() || creature == NULL || cancelPressed || args->size() <= 0) {
			return;
		}

		try
		{
			int value = Integer::valueOf(args->get(0).toString());

			ManagedReference<SceneObject*> suiObject = sui->getUsingObject();
			CreatureObject* player = cast<CreatureObject*>(suiObject.get());

			if(value < 100000)
			{
				creature->sendSystemMessage("You have entered an insufficient amount, please try again.");

				ManagedReference<SuiInputBox*> input = new SuiInputBox(player, SuiWindowType::STRUCTURE_VENDOR_WITHDRAW);
				input->setPromptTitle("Bounty Hunter Request");
				input->setPromptText("Please specify an amount to place.  It must be greater than 100,000 credits.  There is no limit.");
				input->setUsingObject(player);
				input->setCallback(new BountyHuntSuiCallback(creature->getZoneServer()));

				creature->getPlayerObject()->addSuiBox(input);
				creature->sendMessage(input->generateMessage());
			}
			else if(creature->getBankCredits() + creature->getCashCredits() >= value)
			{
					if(creature->getBankCredits() > value) creature->subtractBankCredits(value);
					else
					{
						creature->subtractCashCredits(value - creature->getBankCredits());
						creature->subtractBankCredits(creature->getBankCredits());
					}

					VisibilityManager::instance()->addPlayerToBountyList(player, value);

					creature->sendSystemMessage("Bounty has been successfully placed!");
			}
			else creature->sendSystemMessage("You have insufficient funds!");



		} catch(Exception& e) { }
	}
};

#endif
