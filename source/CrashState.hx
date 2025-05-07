package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.system.FlxSound;
import FreeplayState;

class CrashState extends MusicBeatState
{
	var crashText:FlxText;
	var crashText2:FlxText;
	override function create()
	{
		var crashData:String;
		#if CRASH_HANDLER
		crashData = "NewCreditsState.hx (line 135)
flixel/FlxGame.hx (line 642)
flixel/FlxGame.hx (line 729)
flixel/FlxGame.hx (line 682)
flixel/FlxGame.hx (line 550)
openfl/events/EventDispatcher.hx (line 402)
openfl/display/DisplayObject.hx (line 1399)

Uncaught Error: Null Object Reference
Crash Handler written by: sqirra-rng";//"blah blah blah crash data goes here blah blah blah"; // placeholder crash data
		#else
		crashData = "Crash handler not supported, how'd you get here? :/";
		#end
		//super.create();
		FlxG.sound.music.stop();
		if (FreeplayState.vocals != null)
			FreeplayState.vocals.stop();
		FlxG.sound.play(Paths.sound('crash'), 1);
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('crashScreen'));
		add(bg);
		bg.screenCenter();
		crashText = new FlxText(896, 468, 305, crashData, 16);
		crashText.setFormat("assets/fonts/dacrocomic.ttf", 16, FlxColor.WHITE, CENTER);
		add(crashText);
		crashText2 = new FlxText(259, 468, 305, crashData, 16);
		crashText2.setFormat("assets/fonts/dacrocomic.ttf", 16, FlxColor.WHITE, CENTER);
		add(crashText2);
	}
}
