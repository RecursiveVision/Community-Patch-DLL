-- Minor Civ Bully Unit
UPDATE MinorCivilizations
SET BullyUnitClass = 'UNITCLASS_WORKER'
WHERE ArtDefineTag = 'ART_DEF_CIVILIZATION_MINOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- PTP Military Power Needed (float value)
INSERT INTO Defines (Name, Value)
SELECT 'MOD_BALANCE_CORE_MINIMUM_RANKING_PTP', '0.6';

-- Monopoly Defines for CBP
INSERT INTO Defines (Name, Value)
SELECT 'GLOBAL_RESOURCE_MONOPOLY_THRESHOLD', '50';

INSERT INTO Defines (Name, Value)
SELECT 'STRATEGIC_RESOURCE_MONOPOLY_THRESHOLD', '25';

--Diplo Distances
--3
UPDATE Defines
SET Value = '4'
WHERE Name = 'EXPANSION_CAPITAL_DISTANCE_AGGRESSIVE_POSTURE_HIGH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

--5
UPDATE Defines
SET Value = '8'
WHERE Name = 'EXPANSION_CAPITAL_DISTANCE_AGGRESSIVE_POSTURE_MEDIUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

--9
UPDATE Defines
SET Value = '12'
WHERE Name = 'EXPANSION_CAPITAL_DISTANCE_AGGRESSIVE_POSTURE_LOW' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- 7
UPDATE Defines
SET Value = '12'
WHERE Name = 'PROXIMITY_NEIGHBORS_CLOSEST_CITY_REQUIREMENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- 11
UPDATE Defines
SET Value = '16'
WHERE Name = 'PROXIMITY_NEIGHBORS_CLOSEST_CITY_REQUIREMENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- 50
UPDATE Defines
SET Value = '24'
WHERE Name = 'PROXIMITY_FAR_DISTANCE_MAX' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- Divisor for CBP
INSERT INTO Defines (Name, Value)
SELECT 'BALANCE_HAPPINESS_LUXURY_BASE', '1';

-- New CBP Quests
INSERT INTO Defines (Name, Value)
SELECT 'QUEST_DISABLED_CP_QUESTS', '1';

-- Settler stuff

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_EMPIRE_BORDERLAND_STRATEGIC_VALUE', '15'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_COAST_STRATEGIC_VALUE', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_FRESH_WATER_STRATEGIC_VALUE', '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CHOKEPOINT_STRATEGIC_VALUE', '15'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_BAD_TILES_STRATEGIC_VALUE', '-25'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'SETTLER_MOVE_ON_START', '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_SETTLER_MOVE_START' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'SETTLER_MOVE_ON_START', '0'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_SETTLER_MOVE_START' AND Value= 0 );

-- Combat Stuff

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_BASIC_ATTACK_ARMY_SIZE', '6'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_NAVY_START_SIZE', '4'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_EMBARK_DEFENSE_DIVISOR', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_NAVAL_DEFENSE_CITY_STRIKE_MODIFIER', '75'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '-50'
WHERE Name = 'AIR_SWEEP_INTERCEPTION_DAMAGE_MOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- Barbarian Stuff

UPDATE Defines
SET Value = '10'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_CAPTURE_CITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_CAMP_DEFENSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '50'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_DESTROY_HIGH_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '30'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_DESTROY_MEDIUM_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_DESTROY_LOW_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '60'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_ATTRIT_HIGH_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '40'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_ATTRIT_MEDIUM_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_ATTRIT_LOW_UNIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '8'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_AGGRESSIVE_MOVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines
SET Value = '60'
WHERE Name = 'AI_TACTICAL_BARBARIAN_PRIORITY_PILLAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- Spy Stuff

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_SABOTAGE_RATE', '18'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_RESPAWN_TIMER', '12'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Defines SET Value =  '300' WHERE Name = 'ESPIONAGE_GATHERING_INTEL_COST_PERCENT';

-- Purchase Mod

INSERT OR IGNORE INTO Defines (
Name, Value)
SELECT 'AI_GOLD_TREASURY_BUFFER', '500';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CITY_PURCHASE_MOD', '5';

-- Minor Civ Stuff

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_INFLUENCE_BOOST_PATRONAGE_POLICY', '50';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_INFLUENCE_BOOST_PROTECTION_MINOR', '15';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_MINOR_PROTECTION_MINIMUM_DURATION', '50';

-- Ideology Unlock via Policies
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_MOD_POLICY_BRANCHES_NEEDED_IDEOLOGY', '3';

-- Worker stuff

INSERT INTO Defines (
Name, Value)
SELECT 'BUILDER_TASKING_BASELINE_ADDS_FOOD', '200';

INSERT INTO Defines (
Name, Value)
SELECT 'BUILDER_TASKING_BASELINE_ADDS_GOLD', '50';

INSERT INTO Defines (
Name, Value)
SELECT 'BUILDER_TASKING_BASELINE_ADDS_FAITH', '150';

INSERT INTO Defines (
Name, Value)
SELECT 'BUILDER_TASKING_BASELINE_ADDS_PRODUCTION', '150';

INSERT INTO Defines (
Name, Value)
SELECT 'BUILDER_TASKING_BASELINE_ADDS_SCIENCE', '200';

-- Scout stuff
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCOUT_XP_RANDOM_VALUE', '12';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCOUT_XP_MAXIMUM', '100';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCOUT_XP_NATURAL_WONDER', '5';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCOUT_XP_BASE', '1';

-- Wonder Stuff
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CORE_WORLD_WONDER_SAME_ERA_COST_MODIFIER', '25';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CORE_WORLD_WONDER_PREVIOUS_ERA_COST_MODIFIER', '15';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CORE_WORLD_WONDER_EARLIER_ERA_COST_MODIFIER', '10';

-- Defensive Pact Values
INSERT INTO Defines (
Name, Value)
SELECT 'OPINION_WEIGHT_DP_WITH_FRIEND', '-5';

INSERT INTO Defines (
Name, Value)
SELECT 'OPINION_WEIGHT_DP_WITH_ENEMY', '10';

INSERT INTO Defines (
Name, Value)
SELECT 'OPINION_WEIGHT_DP', '-10';

-- Open Borders Values
INSERT INTO Defines (
Name, Value)
SELECT 'OPINION_WEIGHT_OPEN_BORDERS_MUTUAL', '-12';

INSERT INTO Defines (
Name, Value)
SELECT 'OPINION_WEIGHT_OPEN_BORDERS_US', '-8';

INSERT INTO Defines (
Name, Value)
SELECT 'OPINION_WEIGHT_OPEN_BORDERS_THEM', '-4';

-- Open Borders Trade Gold Value (halved if not mutual)
INSERT INTO Defines (
Name, Value)
SELECT 'OPEN_BORDERS_MODIFIER_TRADE_GOLD', '20';

-- Great People Rate Mod
INSERT INTO Defines (
Name, Value)
SELECT 'GWAM_THRESHOLD_DECREASE', '0';

-- Building Investments Base Rate
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_BUILDING_INVESTMENT_BASELINE', '-50';

-- Unit Investments Base Rate
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_UNIT_INVESTMENT_BASELINE', '-50';

-- Tile Bonus for Arabia (CBP)
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CORE_ARABIA_TILE_BONUS', '10';

-- early expansion

INSERT INTO Defines (
Name, Value)
SELECT 'AI_STRATEGY_EARLY_EXPANSION_RELATIVE_TILE_QUALITY', '60';	
	
UPDATE Defines
SET Value = '8'
WHERE Name = 'AI_STRATEGY_EARLY_EXPANSION_NUM_CITIES_LIMIT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_SETTLER' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_HAPPINESS_THRESHOLD_PERCENTILE', '40';

-- Austria new UA (CBP)
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_MARRIAGE_GP_RATE', '10';

-- Diplomacy
UPDATE Defines
SET Value = '14'
WHERE Name = 'DOF_THRESHOLD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_SETTLER' AND Value= 1 );

UPDATE Defines
SET Value = '5'
WHERE Name = 'DEAL_VALUE_PER_OPINION_WEIGHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_SETTLER' AND Value= 1 );

-- Minor Civ Stuff
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_PLEDGE_TO_PROTECT_DEFENSE_BONUS', '5';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_PLEDGE_TO_PROTECT_DEFENSE_BONUS_MAX', '25';

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_ALLIANCE_DEFENSE_BONUS', '1';

-- Max number of CSs calc'd for bonus for Greek UA (CBP)
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_MAX_CS_ALLY_STRENGTH', '5';

-- Automations

INSERT INTO Defines (
Name, Value)
SELECT 'UNIT_AUTO_EXTRA_AUTOMATIONS_DISABLED', '0';

-- India Growth (CBP) 

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_FOLLOWER_GROWTH_BONUS', '0';

-- AI Military Strategies - no CSs

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_NEED_RANGED';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_EMPIRE_DEFENSE_CRITICAL';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_ENOUGH_RANGED';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_NEED_MOBILE';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_ENOUGH_MOBILE';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_NEED_ANTIAIR';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_ENOUGH_ANTIAIR';

UPDATE AIMilitaryStrategies
SET NoMinorCivs = '1'
WHERE Type = 'MILITARYAISTRATEGY_NEED_AIR_CARRIER';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '40'
WHERE FlavorType = 'FLAVOR_CITY_DEFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_CRITICAL';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '80'
WHERE FlavorType = 'FLAVOR_DEFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_CRITICAL';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '80'
WHERE FlavorType = 'FLAVOR_OFFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_CRITICAL';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '15'
WHERE FlavorType = 'FLAVOR_NAVAL' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_CRITICAL';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '50'
WHERE FlavorType = 'FLAVOR_DEFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_ELEVATED';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '25'
WHERE FlavorType = 'FLAVOR_CITY_DEFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_ELEVATED';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '-10'
WHERE FlavorType = 'FLAVOR_NAVAL' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_THREAT_ELEVATED';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '10'
WHERE FlavorType = 'FLAVOR_CITY_DEFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_GENERAL_DEFENSE';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '30'
WHERE FlavorType = 'FLAVOR_DEFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_GENERAL_DEFENSE';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '20'
WHERE FlavorType = 'FLAVOR_OFFENSE' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_GENERAL_DEFENSE';

UPDATE AIMilitaryStrategy_City_Flavors
SET Flavor = '-20'
WHERE FlavorType = 'FLAVOR_NAVAL' and AIMilitaryStrategyType = 'MILITARYAISTRATEGY_MINOR_CIV_GENERAL_DEFENSE';
------------------------------
-- GameOptions
------------------------------
INSERT INTO GameOptions
			(Type,								Description,								Help,											"Default")
VALUES		('GAMEOPTION_BARB_GG_GA_POINTS',	'TXT_KEY_GAME_OPTION_BARB_GG_GA_POINTS',	'TXT_KEY_GAME_OPTION_BARB_GG_GA_POINTS_HELP',	0),
			('GAMEOPTION_EVENTS',	'TXT_KEY_GAME_OPTION_EVENTS',	'TXT_KEY_GAME_OPTION_EVENTS_HELP',	0);

