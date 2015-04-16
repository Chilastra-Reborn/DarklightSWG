local ObjectManager = require("managers.object.object_manager") print("Object manager loaded for KIG")

kaas_imperial_garison = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("kaas_imperial_garison", true) print("registered KIG")

function kaas_imperial_garison:start()
	if (isZoneEnabled("kaas")) then print("kaas enable check")
		self:spawnMobiles() ("spawning mobiles function")
	end
end

function kaas_imperial_garison:spawnMobiles()

	-- Outside Starport / Teh Cloaner
	spawnMobile("kaas", "at_st", 300, -5125.9, 80.0, -2257.9, 0, 0)
	spawnMobile("kaas", "at_st", 300, -5108.5, 80.0, -2257.9, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5123.9, 80.0, -2218.0, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5114.1, 80.0, -2217.7, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5111.6, 80.0, -2285.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5122.6, 80.0, -2285.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5080.7, 80.0, -2282.6, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5080.7, 80.0, -2275.7, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5145.8, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5152.1, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5160.6, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5167.4, 80.0, -2287.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5129.4, 84.0, -2221.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5108.9, 84.0, -2221.1, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5082.5, 80.0, -2272.0, -90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5082.5, 80.0, -2267.8, -90, 0)	
	spawnMobile("kaas", "stormtrooper", 300, -5109.6, 80.0, -2233.4, 179, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5131.2, 80.0, -2233.4, 179, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5147.8, 80.0, -2265.7, 90, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5149.2, 80.0, -2224.3, 179, 0)
	spawnMobile("kaas", "at_st", 300, -5119.9, 80.0, -2192.4, 179, 0)
	
	-- Inside Police Station
	spawnMobile("kaas", "stormtrooper_squad_leader", 300, -0.0, 2.0, 3.9, 0, 35791428)
	spawnMobile("kaas", "stormtrooper", 300, -0.0, 1.0, -21.7, 0, 35791433)
	spawnMobile("kaas", "stormtrooper_rifleman", 300, 14.2, 1.0, -1.4, 0, 35791431)
	spawnMobile("kaas", "stormtrooper_rifleman", 300, 20.2, 1.0, 8.1, -90, 35791428)
	spawnMobile("kaas", "stormtrooper_rifleman", 300, -20.2, 1.0, 8.1, 90, 35791428)
	spawnMobile("kaas", "imperial_private", 300, -18.5, 1.0, 20.2, 0, 35791430)
	spawnMobile("kaas", "stormtrooper_sniper", 300, -20.5, 1.0, -11.5, 90, 35791428)
	spawnMobile("kaas", "stormtrooper_bombardier", 300, 20.6, 1.0, -11.5, -90, 35791428)
	spawnMobile("kaas", "stormtrooper_bombardier", 300, -17.6, 1.0, -4.6, 0, 35791435)
	
	spawnMobile("kaas", "stormtrooper", 300, 2.7, 7.0, -0.4, -1, 35791436)
	spawnMobile("kaas", "stormtrooper", 300, 9.9, 7.0, -4.4, 0, 35791436)
	spawnMobile("kaas", "stormtrooper", 300, 7.8, 7.0, -15.2, 0, 35791436)
	spawnMobile("kaas", "stormtrooper", 300, -9.8, 7.0, -13.1, -121, 35791436)
	spawnMobile("kaas", "stormtrooper", 300, -4.8, 7.0, -4.7, -131, 35791436)
	spawnMobile("kaas", "stormtrooper", 300, 3.1, 7.0, -11.3, 121, 35791436)
	spawnMobile("kaas", "stormtrooper", 300, -0.3, 7.0, -10.20, 123, 35791436)
	
	-- Temple Entrance Guards

	spawnMobile("kaas", "at_st", 300, -5097.8, 80.0, -2362.2, -134, 0)
	spawnMobile("kaas", "at_st", 300, -5073.8, 80.0, -2346.1, -90, 0)
	spawnMobile("kaas", "at_st", 300, -5136.6, 80.0, -2358.5, 107, 0)
	spawnMobile("kaas", "at_st", 300, -5160.7, 80.0, -2340.2, 131, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5136.6, 80.0, -2376.7, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5126.2, 80.0, -2376.7, 0, 0)
	spawnMobile("kaas", "stormtrooper", 300, -5105.2, 80.0, -2376.7, 0, 0)
	
  -- Dark Temple Interior
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -18.8, -2.0, 11.8, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 2.0, -17.0, -18.8, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 18.8, -26.5, 2.3, 0, 35791397)
--spawnMobile("kaas", "prophet_of_the_dark_side", 900, -0.1, -37.3, 15.2, -179, 35791397)
--	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 11.7, -37.3, 0.0, -90, 35791397)   -- Duplicate of Boss PlaceHolder
--spawnMobile("kaas", "prophet_of_the_dark_side", 900, -11.7, -37.3, 15.2, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 16.3, -30.3, 16.6, -140, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 16.6, -21.3, -16.7, -44, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -16.7, -11.3, -16.8, 45, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 20.3, -1.3, 11.2, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 20.4, -1.3, -11.0, -90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, 0.2, -1.3, -21.0, 0, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -0.1, -1.3, 20.5, -179, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -20.9, -1.3, -11.0, 90, 35791397)
	spawnMobile("kaas", "prophet_of_the_dark_side", 900, -5120.9, -81.3, -2406.3, 0, 0)
	
-- Det HQ
	spawnMobile("kaas", "dark_trooper", 200, -1.8, -6.8, -5.1, 90, 35791451)
	spawnMobile("kaas", "dark_trooper", 200, 6.9, -6.8, -4.9, -90, 35791451)
	spawnMobile("kaas", "imperial_inquisitor", 200, 4.5, -6.8, -5.9, 0, 35791451)
	spawnMobile("kaas", "imperial_moff", 200, -0.3, -13.7, -3.6, -90, 35791453)
	spawnMobile("kaas", "imperial_general", 200, -6.8, -13.7, -0.2, 90, 35791453)
	spawnMobile("kaas", "imperial_general", 200, -6.8, -13.7, -7.0, 90, 35791453)
	spawnMobile("kaas", "stormtrooper", 200, -6.8, -13.7, -13.3, 90, 35791453)
	spawnMobile("kaas", "stormtrooper", 200, -6.8, -13.7, 5.7, 90, 35791453)
	spawnMobile("kaas", "imperial_inquisitor", 200, -6.4, -13.7, -3.7, 90, 35791453)
	spawnMobile("kaas", "imperial_medic", 200, -7.6, -13.8, 12.0, 90, 35791454)
	spawnMobile("kaas", "stormtrooper", 200, -1.3, -13.7, 13.9, -90, 35791454)
	spawnMobile("kaas", "stormtrooper", 200, 1.9, -13.7, 13.9, -90, 35791454)
	spawnMobile("kaas", "stormtrooper", 200, 3.5, -13.7, 13.9, -90, 35791454)
	spawnMobile("kaas", "stormtrooper", 200, 0.7, -13.7, 10.2, -90, 35791454)
	spawnMobile("kaas", "stormtrooper", 200, 3.0, -13.7, 10.2, -90, 35791454)
	spawnMobile("kaas", "stormtrooper", 200, 5.6, -13.7, 10.2, -90, 35791454)
	spawnMobile("kaas", "imperial_inquisitor", 200, 16.8, -13.7, 12.5, -149, 35791455)
	spawnMobile("kaas", "imperial_inquisitor", 200, 13.8, -13.7, 9.3, 56, 35791455)
	spawnMobile("kaas", "imperial_inquisitor", 200, 16.8, -13.7, 8.1, -42, 35791455)
	spawnMobile("kaas", "dark_trooper", 200, 13.2, -13.8, -14.3, 0, 35791456)
	spawnMobile("kaas", "dark_trooper", 200, 17.8, -13.8, -14.2, 0, 35791456)
	
-- Research Facility
	spawnMobile("kaas", "imperial_noncom", 200, 3.4, -12.0, 30.3, 179, 35791462)
	spawnMobile("kaas", "imperial_captain", 200, 19.4, -12.0, 51.9, 179, 35791462)
	spawnMobile("kaas", "imperial_lieutenant_colonel", 200, 25.4, -12.0, 43.7, 0, 35791462)
	spawnMobile("kaas", "imperial_captain", 200, 10.2, -12.0, 47.1, -90, 35791462)
	spawnMobile("kaas", "imperial_lieutenant_general", 200, 3.6, -12.0, 65.4, 179, 35791462)
	spawnMobile("kaas", "imperial_major", 200, 9.8, -12.0, 62.8, 90, 35791462)
	spawnMobile("kaas", "imperial_corporal", 200, -2.7, -12.0, 63.2, -90, 35791462)
	spawnMobile("kaas", "imperial_first_lieutenant", 200, -12.5, -12.0, 51.4, 179, 35791462)
	spawnMobile("kaas", "imperial_stealth_operative", 200, -12.6, -12.0, 41.0, 179, 35791462)
	spawnMobile("kaas", "stormtrooper", 200, -0.3, -12.0, 37.5, 179, 35791462)
	spawnMobile("kaas", "stormtrooper", 200, 6.7, -12.0, 37.5, 179, 35791462)
	spawnMobile("kaas", "stormtrooper", 200, 25.1, -12.0, 52.7, -128, 35791462)
	spawnMobile("kaas", "stormtrooper", 200, -1.5, -12.0, 68.4, 143, 35791462)
	spawnMobile("kaas", "stormtrooper", 200, -19.6, -12.0, 54.0, 130, 35791462)
	spawnMobile("kaas", "imperial_inquisitor", 200, -49.7, -20.0, 80.9, -90, 35791466)
	spawnMobile("kaas", "imperial_inquisitor", 200, -53.5, -20.0, 86.1, -139, 35791466)
	spawnMobile("kaas", "imperial_inquisitor", 200, -51.7, -20.0, 77.2, -57, 35791466)
	spawnMobile("kaas", "stormtrooper", 200, -56.3, -20.0, 87.4, -172, 35791466)
	spawnMobile("kaas", "prophet_of_the_dark_side", 200, -71.0, -20.0, 80.7, 90, 35791466)
	spawnMobile("kaas", "imperial_inquisitor", 200, -74.9, -20.0, 12.9, -90, 35791465)
	spawnMobile("kaas", "imperial_stealth_operative", 200, -65.1, -20.0, 18.4, 0, 35791465)
	spawnMobile("kaas", "imperial_stealth_operative", 200, -60.6, -20.0, 18.4, 0, 35791465)
	
	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 22.9, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 22.9, -179, 35791471)
	
	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 19.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 19.1, 0, 35791471)
	
	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 13.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 13.0, -179, 35791471)
	
	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 9.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 9.1, 0, 35791471)
	
	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, 3.0, -179, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, 3.0, -179, 35791471)
	
	spawnMobile("kaas", "stormtrooper", 200, 62.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 60.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 58.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 56.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 54.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 52.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 50.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 48.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 46.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 44.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 42.1, -12.0, -1.1, 0, 35791471)
	spawnMobile("kaas", "stormtrooper", 200, 40.1, -12.0, -1.1, 0, 35791471)
	
	spawnMobile("kaas", "imperial_sergeant_major", 200, 38.2, -12.0, 0.4, 90, 35791471)
	spawnMobile("kaas", "imperial_sergeant_major", 200, 38.2, -12.0, 10.8, 90, 35791471)
	spawnMobile("kaas", "imperial_sergeant_major", 200, 38.2, -12.0, 21.1, 90, 35791471)
	
	spawnMobile("kaas", "imperial_noncom", 200, -21.3, -20.0, 8.1, 179, 35791473)
	spawnMobile("kaas", "imperial_noncom", 200, -12.1, -20.0, 8.1, 179, 35791473)
	spawnMobile("kaas", "imperial_noncom", 200, -11.7, -20.0, -2.7, 0, 35791473)
	spawnMobile("kaas", "imperial_noncom", 200, -21.3, -20.0, -2.7, 0, 35791473)
	
	spawnMobile("kaas", "stormtrooper", 200, -30.3, -20.0, 27.3, 0, 35791475)
	spawnMobile("kaas", "stormtrooper", 200, -30.3, -20.0, 58.3, 0, 35791475)
	spawnMobile("kaas", "stormtrooper", 200, -30.3, -20.0, 82.3, 0, 35791475)
	
	spawnMobile("kaas", "imperial_major", 200, -37.5, -20.0, 101.1, -90, 35791476)
	spawnMobile("kaas", "dark_trooper", 200, -27.9, -20.0, 106.2, -179, 35791476)
	spawnMobile("kaas", "dark_trooper", 200, -17.9, -20.0, 106.2, -179, 35791476)
	spawnMobile("kaas", "imperial_major", 200, -7.6, -20.0, 100.7, 90, 35791476)
	
	spawnMobile("kaas", "imperial_medic", 200, -2.5, -20.0, 64.8, -179, 35791478)
	
	spawnMobile("kaas", "imperial_medic", 200, 35.6, -20.0, 146.2, 0, 35791470)
	
	spawnMobile("kaas", "imperial_scientist", 200, 72.5, -12.0, 84.0, 0, 35791468)
	spawnMobile("kaas", "imperial_scientist", 200, 65.0, -12.0, 82.1, -179, 35791468)
	spawnMobile("kaas", "imperial_scientist", 200, 57.7, -12.0, 81.2, -179, 35791468)
	spawnMobile("kaas", "imperial_scientist", 200, 49.4, -12.0, 83.6, 0, 35791468)
	
	spawnMobile("kaas", "captured_jedi", 200, 49.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 49.8, -12.0, 53.4, 0, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 56.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 56.8, -12.0, 53.4, 0, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 64.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 64.8, -12.0, 53.4, 0, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 72.8, -12.0, 64.4, 179, 35791469)
	spawnMobile("kaas", "captured_jedi", 200, 72.8, -12.0, 52.4, 0, 35791469)
	
	spawnMobile("kaas", "imperial_inquisitor", 200, 71.4, -12.0, 59.4, 0, 35791469)
	spawnMobile("kaas", "imperial_inquisitor", 200, 65.1, -12.0, 58.1, 168, 35791469)
	spawnMobile("kaas", "imperial_inquisitor", 200, 55.6, -12.0, 59.3, 21, 35791469)
	spawnMobile("kaas", "imperial_inquisitor", 200, 50.1, -12.0, 58.0, 179, 35791469)
	
	local pPadawan = spawnMobile("kaas", "prophet_of_the_dark_side", 10800, 11.7, -37.3, 0.0, -90, 35791397)
        	createObserver(OBJECTDESTRUCTION, "kaas_imperial_garison", "notifyPadawanDead", pPadawan)


end

function kaas_imperial_garison:notifyPadawanDead(pPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("kaas", "prophet_of_the_dark_side", 0, 0.2, -37.3, -24.2, 0, 35791397) print("spawned POTDS")
			spatialChat(pBoss, "I have murdered thousands, and do you know that my only regret is that I could not see their blood?")	
          		createObserver(DAMAGERECEIVED, "kaas_imperial_garison", "boss_damage", pBoss) print("observer set")
          
          
     return 0
end



function kaas_imperial_garison:boss_damage(pBoss, pPlayer, damage)
	--Are any nil or not?
	if pBoss == nil or pPlayer == nil then
		return 1 print("returning 1 for nil pointers")
	end

	--This properly calls LuaCreatureObject.h and (pPointer, function(pointerNewName)
	return ObjectManager.withCreatureObject(pBoss, function(boss)
		--Your range check
		local x1 = 0.2
		local y1 = -24.2
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 45
		
		if distance > (maxDistance * maxDistance) then 
			spatialChat(pBoss, "RUN FROM YOUR DEATH! The power of the Dark Side has made me invulnerable.") print("out of range")

			boss:setPvpStatusBitmask(0)
			forcePeace(pBoss)
			boss:setOptionsBitmask(128)print("bitmask set")

			createEvent(500, "kaas_imperial_garison", "removeFromKIG", pPlayer)print("event triggered")
		end
		--Your HAM check
		if (boss:getHAM(0) <= boss:getMaxHAM(0) * 0.9) then print("checking HAM")
			spatialChat(pBoss, "To my side apprentices!") print("spatial")
			writeData("kaas_imperial_garison:spawnAdd", 1) print("writing data")
			if (readData("kaas_imperial_garison:spawnAdd") == 1) then print("checking spawnAdd")
				local pAdd1 = spawnMobile("kaas", "prophet_of_the_dark_side", 0, 11.7, -37.3, 0.0, -90, 35791397)print("add spawned")
				local firstTime = LuaCreatureObject(pAdd1)print("luaCreatureObject pointer")
				spatialChat(pAdd1, "At your command my lord!") print("spatial for add")
				firstTime:engageCombat(pPlayer)print("engaging combat")
			end
		end
		return 1
	end)
end
	
function kaas_imperial_garison:removeFromKIG(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local creature = LuaCreatureObject(pPlayer)
	
	if (creature:isGrouped()) then
		size = creature:getGroupSize()
		
		for i = 0, size - 1, 1 do
			pMember = creature:getGroupMember(i)
			if pMember ~= nil then
				local groupMember = LuaCreatureObject(pMember)
				if groupMember:getParentID() > 35791396 and groupMember:getParentID() < 35791397 then
					createEvent(500, "kaas_imperial_garison", "teleportPlayer", pMember)
				end
			end
		end 
	else
		createEvent(500, "kaas_imperial_garison", "teleportPlayer", pPlayer)
	end
	
end

function kaas_imperial_garison:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return 0
	end
	
	--local creature = LuaCreatureObject(pPlayer)
	CreatureObject(pPlayer):teleport( -4624.7, 78.9, 6677.5, 0)
end
