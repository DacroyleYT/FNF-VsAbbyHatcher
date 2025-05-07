import Paths;
import lime.utils.Assets;

#if sys
import sys.io.File;
import sys.FileSystem;
#end

using StringTools;

typedef DMMFile = {
    var notes:Array<Dynamic>;
}

class DMMFile
{
    public var songName:String;
    public var songBPM:String;
    public var notes:Array<Dynamic>;

    public function new(notes) {
        this.notes = notes;
    }

    public static function loadFile(filename:String, ?folder:String) {
        var sheetData = null;
        #if MODS_ALLOWED
		var moddyFile:String = Paths.modsDcr(filename);
		if(FileSystem.exists(moddyFile)) {
			sheetData = File.getContent(moddyFile).trim();
		}
		#end
    }
}