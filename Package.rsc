PackageFile whiteChicken
{
	String _name = "Cannibals";
	String _author = "kralyerg";
	String _description = "This mod adds cannibalism.";
	String _icon = "icon.png";
	int _userVersion = 1;

	// all files in resource directory
	String _includeList
	[
		"*"	
	]
	
	// exclude package files, mod files, file used for building packages
	String _excludeList
	[
		"Package_*.crs"
		"*.pkg"
		"*.pkm"
	]
}
