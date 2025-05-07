package;

import Section.SwagSection;
import haxe.Json;
import haxe.format.JsonParser;
import lime.utils.Assets;

#if sys
import sys.io.File;
import sys.FileSystem;
#end

using StringTools;

typedef CoolMetadata =
{
	var songName:String;
	var composer:String;
    var ogComposer:String;
    var charter:String;
    var freeplayDesc:String;
	var freeplaySong:String;
}

class SongMeta
{
	public var songName:String = "My Song";
	public var composer:String = "Unknown";
    public var ogComposer:String = "Unknown";
    public var charter:String = "Unknown";
    public var freeplayDesc:String = "";
	public var freeplaySong:String = "fuzzly-catcher"; // defaults to Fuzzly-Catcher if no freeplay song found

	/*private static function onLoadJson(metadataJson:Dynamic)
	{
        if (metadataJson.songName )
	}*/

	public function new(songName, composer, ogComposer, charter, freeplayDesc, freeplaySong)
	{
		this.songName = songName;
		this.composer = composer;
		this.ogComposer = ogComposer;
        this.charter = charter;
        this.freeplayDesc = freeplayDesc;
		this.freeplaySong = freeplaySong;
	}

	public static function loadFromJson(jsonInput:String, ?folder:String):CoolMetadata
	{
		var rawJson = null;
		
		var formattedFolder:String = Paths.formatToSongPath(folder);
		var formattedSong:String = Paths.formatToSongPath(jsonInput);
		#if MODS_ALLOWED
		//trace("GETTING FILE");
		var moddyFile:String = Paths.modsJson(formattedFolder + '/metadata');
		if(FileSystem.exists(moddyFile)) {
			//trace("FILE EXISTS");
			rawJson = File.getContent(moddyFile).trim();
		}
		#end

		if(rawJson == null) {
			#if sys
			rawJson = File.getContent(Paths.json(formattedFolder + '/metadata')).trim();
			#else
			rawJson = Assets.getText(Paths.json(formattedFolder + '/metadata')).trim();
			#end
		}

		//trace("JSON NOW LOOKS LIKE THIS: " + rawJson); // for some reason json kept returning null in freeplay so I made trace commands everywhere to debug the issue

		while (!rawJson.endsWith("}"))
		{
			rawJson = rawJson.substr(0, rawJson.length - 1);
			// LOL GOING THROUGH THE STUFF TO CLEAN IDK WHATS STRANGE
		}
		var metaDataJson:Dynamic = parseJSONstuff(rawJson);
		if(jsonInput != 'metadata') StageData.loadDirectory(metaDataJson);
		//onLoadJson(songJson);
		return metaDataJson;
	}

	public static function parseJSONstuff(rawThingy:String):CoolMetadata
	{
		//trace("PARSING JSON");
		var stuff:CoolMetadata = cast Json.parse(rawThingy);
		return stuff;
	}
}
