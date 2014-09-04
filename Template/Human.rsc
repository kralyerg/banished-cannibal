// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"value",

		"model",
		"character",
		"animal",
		"select",
		"livestock",
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "UI/HumanSpriteSheet.rsc";
	String _spriteName = "HumanSmall";
	StringTable _stringTable = "UI/HumanStringTable.rsc";
	String _stringName = "Human";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 400;

	// how much is sold in a single sale
	int _stackCount = 12;
	int _minStackCount = 8;
}

CharacterDescription character
{
	float _headingOffset = 90.0;
	float _turnFilter = 0.95;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "UI/HumanSpriteSheet.rsc";
	String _spriteName = "Human";
	StringTable _stringTable = "UI/HumanStringTable.rsc";
	String _stringName = "Humans";
	SelectGroup _group = Livestock;
}

AnimalDescription animal
{
	ComponentDescription _rawMaterial 
	[	
		"Template/RawMaterialHumanMeat.rsc"
	]
	
	int _roamSize = 5;
	int _requiredArea = 6;
	
	float _maxAge = 3.0;
	float _maxAgeTolerance = 0.25;
	float _ageForOffspring = 0.33;
	float _offspringTerm = 0.20;
	float _offsprintTermTolerance = 0.20;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Citizen\CitizenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Citizen\CitizenMaleMesh.rsc" 
			] 
		}		
		{ 
			AnimationGroup _animations = "Models\Citizen\CitizenAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Citizen\CitizenFemaleMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

LivestockDescription livestock 
{ 
}
