-- MOUNTED UNITS
	
	---------------------
	-- Mounted Ranged
	---------------------

	-- All Mounted Ranged Units need a Range of 1
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_CHARIOT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_EGYPTIAN_WARCHARIOT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_MONGOLIAN_KESHIK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_HUN_HORSE_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_ARABIAN_CAMELARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_MOUNTED_BOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_CUIRASSIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_INDIAN_WARELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_HELICOPTER_GUNSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_AUSTRIAN_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_RUSSIAN_COSSACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '1' WHERE Type = 'UNIT_HUN_HORSE_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_AUSTRIAN_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_RUSSIAN_COSSACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_ARCHER' WHERE Type = 'UNIT_HELICOPTER_GUNSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_AUSTRIAN_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_RUSSIAN_COSSACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_RANGED' WHERE Type = 'UNIT_HELICOPTER_GUNSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_CAVALRY' WHERE Type = 'UNIT_AUSTRIAN_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_CAVALRY' WHERE UnitType = 'UNIT_AUSTRIAN_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ANTI_TANK_GUN' WHERE Type = 'UNIT_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ANTI_TANK_GUN' WHERE Type = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ANTI_TANK_GUN' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_ANTI_TANK_GUN' WHERE Type = 'UNIT_RUSSIAN_COSSACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_HELICOPTER_GUNSHIP' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_ANTI_TANK_GUN' WHERE UnitType = 'UNIT_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_ANTI_TANK_GUN' WHERE UnitType = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_ANTI_TANK_GUN' WHERE UnitType = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_ANTI_TANK_GUN' WHERE UnitType = 'UNIT_RUSSIAN_COSSACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_HELICOPTER_GUNSHIP' WHERE UnitType = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_CAVALRY';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_BERBER_CAVALRY';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_AUSTRIAN_HUSSAR';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_SHOSHONE_COMANCHE_RIDERS';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_RUSSIAN_COSSACK';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_ANTI_TANK_GUN';
	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_HELICOPTER_GUNSHIP';

	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_ANTI_TANK_GUN', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_CAVALRY', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_BERBER_CAVALRY', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_AUSTRIAN_HUSSAR', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_SHOSHONE_COMANCHE_RIDERS', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_RUSSIAN_COSSACK', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_HELICOPTER_GUNSHIP', 'UNITAI_RANGED' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_ANTI_TANK_GUN', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_CAVALRY', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_BERBER_CAVALRY', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_AUSTRIAN_HUSSAR', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_SHOSHONE_COMANCHE_RIDERS', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_RUSSIAN_COSSACK', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_HELICOPTER_GUNSHIP', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_HUN_HORSE_ARCHER', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_MONGOLIAN_KESHIK', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_ARABIAN_CAMELARCHER', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_INDIAN_WARELEPHANT', 'UNITAI_COUNTER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_TANK_GUN', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CAVALRY', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BERBER_CAVALRY', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_AUSTRIAN_HUSSAR', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SHOSHONE_COMANCHE_RIDERS', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_HELICOPTER_GUNSHIP', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_RUSSIAN_COSSACK', 'PROMOTION_NAVAL_MISFIRE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_HELICOPTER_GUNSHIP', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_TANK_GUN', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CAVALRY', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BERBER_CAVALRY', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_AUSTRIAN_HUSSAR', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SHOSHONE_COMANCHE_RIDERS', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_HELICOPTER_GUNSHIP', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_RUSSIAN_COSSACK', 'PROMOTION_ONLY_DEFENSIVE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_TANK_GUN', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );	
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_TANK_GUN', 'PROMOTION_CITY_PENALTY' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CHARIOT_ARCHER', 'PROMOTION_CITY_PENALTY' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_EGYPTIAN_WARCHARIOT', 'PROMOTION_CITY_PENALTY' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CHARIOT_ARCHER', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );	
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_EGYPTIAN_WARCHARIOT', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );	
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ARABIAN_CAMELARCHER', 'PROMOTION_CITY_PENALTY' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_INDIAN_WARELEPHANT', 'PROMOTION_CITY_PENALTY' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MONGOLIAN_KESHIK', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_HUN_HORSE_ARCHER', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ARABIAN_CAMELARCHER', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MOUNTED_BOWMAN', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CUIRASSIER', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_INDIAN_WARELEPHANT', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_CAVALRY', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BERBER_CAVALRY', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_AUSTRIAN_HUSSAR', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SHOSHONE_COMANCHE_RIDERS', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_RUSSIAN_COSSACK', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_TANK_GUN', 'PROMOTION_ROUGH_TERRAIN_ENDS_TURN' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	

	-- Anti-Tank Gun now Armored Car
	UPDATE Units SET PrereqTech = 'TECH_BALLISTICS' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET Moves = '4' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_ARMORED_CAR' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET UnitFlagIconOffset = '0' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET UnitFlagAtlas = 'ARMORED_CAR_FLAG_ATLAS' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET PortraitIndex = '5' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET IconAtlas = 'COMMUNITY_2_ATLAS' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_ANTI_TANK_GUN', 'RESOURCE_ALUMINUM', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Remove free promotions from helicopter and anit-tank (As they've moved functions)
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_ANTI_TANK_GUN' AND PromotionType = 'PROMOTION_ANTI_TANK';
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_HELICOPTER_GUNSHIP' AND PromotionType = 'PROMOTION_NO_CAPTURE';
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_HELICOPTER_GUNSHIP' AND PromotionType = 'PROMOTION_EMBARKATION';
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_HELICOPTER_GUNSHIP' AND PromotionType = 'PROMOTION_DEFENSIVE_EMBARKATION';
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_HELICOPTER_GUNSHIP' AND PromotionType = 'PROMOTION_ALLWATER_EMBARKATION';
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_HELICOPTER_GUNSHIP' , 'PROMOTION_HOVER_UNIT';

	-- Give anti-tank gun the no defensive penalty.
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_TANK_GUN' , 'PROMOTION_NO_DEFENSIVE_BONUSES';

	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_HORSE_ARCHER' WHERE Type = 'UNIT_CHARIOT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_HORSE_ARCHER' WHERE UnitType = 'UNIT_CHARIOT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

	-- Mounted units should be penalized when attacked by spearmen
	UPDATE Units SET IsMounted = '1' WHERE CombatClass = 'UNITCOMBAT_ARCHER' AND Moves >= 3 AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Tech Stuff
	
	UPDATE Units SET PrereqTech = 'TECH_PHYSICS' WHERE Type = 'UNIT_ARABIAN_CAMELARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MATHEMATICS' WHERE Type = 'UNIT_HUN_HORSE_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_INDIAN_WARELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MILITARY_SCIENCE' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MATHEMATICS' WHERE Type = 'UNIT_MONGOLIAN_KESHIK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_OTTOMAN_SIPAHI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_CHIVALRY' WHERE Type = 'UNIT_BYZANTINE_CATAPHRACT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_SONGHAI_MUSLIMCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_SWEDISH_HAKKAPELIITTA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_POLISH_WINGED_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_LANCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_GREEK_COMPANIONCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_HORSEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ARCHERY' WHERE Type = 'UNIT_CARTHAGINIAN_FOREST_ELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	
	UPDATE Units SET ObsoleteTech = 'TECH_PHYSICS' WHERE Type = 'UNIT_EGYPTIAN_WARCHARIOT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_PHYSICS' WHERE Type = 'UNIT_MONGOLIAN_KESHIK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MATHEMATICS' WHERE Type = 'UNIT_CHARIOT_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_HUN_HORSE_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMBUSTION' WHERE Type = 'UNIT_BYZANTINE_CATAPHRACT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMBUSTION' WHERE Type = 'UNIT_INDIAN_WARELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMBINED_ARMS' WHERE Type = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_BALLISTICS' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_BALLISTICS' WHERE Type = 'UNIT_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MILITARY_SCIENCE' WHERE Type = 'UNIT_OTTOMAN_SIPAHI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET ObsoleteTech = 'TECH_MOBILE_TACTICS' WHERE Type = 'UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MOBILE_TACTICS' WHERE Type = 'UNIT_AUSTRIAN_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MOBILE_TACTICS' WHERE Type = 'UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MOBILE_TACTICS' WHERE Type = 'UNIT_RUSSIAN_COSSACK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_MOBILE_TACTICS' WHERE Type = 'UNIT_ANTI_TANK_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMBUSTION' WHERE Type = 'UNIT_LANCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMBUSTION' WHERE Type = 'UNIT_SWEDISH_HAKKAPELIITTA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_KNIGHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_GREEK_COMPANIONCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_SONGHAI_MUSLIMCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_CHIVALRY' WHERE Type = 'UNIT_CARTHAGINIAN_FOREST_ELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	

	---------------------
	-- Mounted Melee
	---------------------

	--Knight/Lancer/WW1 Tank
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_WWI_TANK' WHERE UnitType = 'UNIT_LANCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_LANCER' AND PromotionType = 'PROMOTION_FORMATION_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET IgnoreBuildingDefense = '0' WHERE Type = 'UNIT_LANCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_WWI_TANK' WHERE Type = 'UNIT_LANCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_LANCER' WHERE Type = 'UNIT_KNIGHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_LANCER' WHERE UnitType = 'UNIT_KNIGHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

