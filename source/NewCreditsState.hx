package;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.display.FlxBackdrop;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
/*#if MODS_ALLOWED
import sys.FileSystem;
import sys.io.File;
#end*/
import lime.utils.Assets;

using StringTools;

class NewCreditsState extends MusicBeatState
{
	var curSelected:Int = -1;
	var curCreditsThing:Int = -1;

	private var grpOptions:FlxTypedGroup<Alphabet>;
	private var iconArray:Array<AttachedSprite> = [];
	private var creditsStuff:Array<Array<Array<String>>> = [];

	var bg:FlxSprite;
	var descText:FlxText;
	var intendedColor:Int;
	var colorTween:FlxTween;
	var descBox:AttachedSprite;

	var offsetThing:Float = -75;

	override function create()
	{
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		persistentUpdate = true;
		var literalColorLol = new FlxSprite();
		literalColorLol.makeGraphic(1, 1, '0xFFD231BF');
		add(literalColorLol);

		bg = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		//add(bg);
		//bg.screenCenter();
		
		grpOptions = new FlxTypedGroup<Alphabet>();
		add(grpOptions);

		/*#if MODS_ALLOWED
		var path:String = 'modsList.txt';
		if(FileSystem.exists(path))
		{
			var leMods:Array<String> = CoolUtil.coolTextFile(path);
			for (i in 0...leMods.length)
			{
				if(leMods.length > 1 && leMods[0].length > 0) {
					var modSplit:Array<String> = leMods[i].split('|');
					if(!Paths.ignoreModFolders.contains(modSplit[0].toLowerCase()) && !modsAdded.contains(modSplit[0]))
					{
						if(modSplit[1] == '1')
							pushModCreditsToList(modSplit[0]);
						else
							modsAdded.push(modSplit[0]);
					}
				}
			}
		}

		var arrayOfFolders:Array<String> = Paths.getModDirectories();
		arrayOfFolders.push('');
		for (folder in arrayOfFolders)
		{
			pushModCreditsToList(folder);
		}
		#end*/

		var coolPeopleNgl:Array<Array<Array<String>>> = [ //Name - Icon name - Description - Link - BG Color
			[['CREATED BY'],
			['DacroyleYT',			'dacro',			'Creator, coder, artist, animator, composer, etc. of Vs Abby Hatcher',					'https://www.youtube.com/@DacroyleYT',	'FF0000'],
			['RayoMC95',			'rayo',				'Secondary Artist of Vs Abby Hatcher, Creator of ab hat',								'https://www.youtube.com/@XxRayoMC95xX',	'1122FF']
			],
			[['HELPERS'],
			['Der',			'der',			'Playtester of Vs Abby Hatcher',					'https://www.youtube.com/@Deroxx12',	'FFFFFF'],
			['Gamer Boyo',			'gamerboyo',				'Playtester of Vs Abby Hatcher (probably)',								'https://www.youtube.com/@GamerBoyo',	'1122FF']
			],
			[['FEATURING THE VOICE TALENTS OF'],
			['DacroyleYT as Chef Jeff (in Chef\'s Kiss)',			'dacro',			'Creator, coder, artist, animator, composer, etc. of Vs Abby Hatcher',					'https://www.youtube.com/@DacroyleYT',	'FF0000'],
			['(possibly) Natarichan as Abby and Curly (in Chef\'s Kiss)',			'natari',			'One of my Fwends!',					'https://www.youtube.com/@heartracing4you',	'FFFFFF'],
			['(possibly) Izzy "Little opal TV" W. as Katie Sweeper',			'opal',			'<3 <3',					'../assets/images/noSocials.png',	'FFFFFF']
			],
			[['CREATORS OF "ABBY HATCHER"'],
			['Rob Hoegee, Creator',			'robhoegee',		'Creator of "Abby Hatcher"',										'https://twitter.com/robhoegee',	'FFB100'],
			['Kyran Kelly, Director',			'kyran',			'Director of "Abby Hatcher"',										'../assets/images/noSocials.png',	'FFB100'],
			['Macy Drouin, Voice of Abby',			'macy',				'Voice of Abby Hatcher',							'https://www.instagram.com/macydrouin',	'004CFF'],
			['Ryan Carlson, Composer', 		'ryancarlson', 		'Composer of "Abby Hatcher"', 								'http://www.ryancarlsonmusic.com/', 'AAAAAA']
			],
			[['PSYCH ENGINE TEAM'],
			['Shadow Mario',		'shadowmario',		'Main Programmer of Psych Engine',								'https://twitter.com/Shadow_Mario_',	'444444'],
			['RiverOaken',			'river',			'Main Artist/Animator of Psych Engine',							'https://twitter.com/RiverOaken',		'B42F71'],
			['shubs',				'shubs',			'Additional Programmer of Psych Engine',						'https://twitter.com/yoshubs',			'5E99DF']
			],
			[["FUNKIN' CREW"],
			['ninjamuffin99',		'ninjamuffin99',	"Programmer of Friday Night Funkin'",							'https://twitter.com/ninja_muffin99',	'CF2D2D'],
			['PhantomArcade',		'phantomarcade',	"Animator of Friday Night Funkin'",								'https://twitter.com/PhantomArcade3K',	'FADC45'],
			['evilsk8r',			'evilsk8r',			"Artist of Friday Night Funkin'",								'https://twitter.com/evilsk8r',			'5ABD4B'],
			['kawaisprite',			'kawaisprite',		"Composer of Friday Night Funkin'",								'https://twitter.com/kawaisprite',		'378FC7']
			],
			[["SPECIAL THANKS"],
			['ninjamuffin99',		'ninjamuffin99',	"Programmer of Friday Night Funkin'",							'https://twitter.com/ninja_muffin99',	'CF2D2D'],
			['PhantomArcade',		'phantomarcade',	"Animator of Friday Night Funkin'",								'https://twitter.com/PhantomArcade3K',	'FADC45'],
			['evilsk8r',			'evilsk8r',			"Artist of Friday Night Funkin'",								'https://twitter.com/evilsk8r',			'5ABD4B'],
			['And you for playing the mod! <3']
			],
			[["Abby Hatcher is property of Spin Master Hatching Productions Inc. This FNF mod is not affiliated with or endorsed by them in any way."]]
		];
		
		for(i in coolPeopleNgl){
			creditsStuff.push(i);
		}
		
		var credID:Int = 0;
		//for (i in 0...creditsStuff.length) // new credits system that might look more like the show but idk much haxe yet so bear with me here
		for (i in 0...creditsStuff[curCreditsThing][credID].length) {
				var isSelectable:Bool = !unselectableCheck(i);
				var optionText:Alphabet = new Alphabet(FlxG.width / 2, 300, creditsStuff[credID][i][0], false);
				optionText.isMenuItem = true;
				optionText.targetY = credID;
				optionText.changeX = false;
				optionText.snapToPosition();
				grpOptions.add(optionText);

				if(isSelectable) {
					/*if(creditsStuff[curCreditsThing][credID][i][5] != null)
					{
						Paths.currentModDirectory = creditsStuff[credID][i][5];
					}*/

					var icon:AttachedSprite = new AttachedSprite('credits/' + creditsStuff[credID][i][1]);
					icon.xAdd = optionText.width + 10;
					icon.sprTracker = optionText;
	
					// using a FlxGroup is too much fuss!
					iconArray.push(icon);
					add(icon);
					Paths.currentModDirectory = '';

					if(curSelected == -1) curSelected = credID;
				}
				else optionText.alignment = CENTERED;
			}
		
		descBox = new AttachedSprite();
		descBox.makeGraphic(1, 1, FlxColor.BLACK);
		descBox.xAdd = -10;
		descBox.yAdd = -10;
		descBox.alphaMult = 0.6;
		descBox.alpha = 0.6;
		add(descBox);

		descText = new FlxText(50, FlxG.height + offsetThing - 25, 1180, "", 32);
		descText.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, CENTER/*, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK*/);
		descText.scrollFactor.set();
		//descText.borderSize = 2.4;
		descBox.sprTracker = descText;
		add(descText);

		bg.color = getCurrentBGColor();
		intendedColor = bg.color;
		changeSelection();
		super.create();
	}

	var quitting:Bool = false;
	var holdTime:Float = 0;
	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.7)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		if(!quitting)
		{
			if(creditsStuff.length > 1)
			{
				var shiftMult:Int = 1;
				if(FlxG.keys.pressed.SHIFT) shiftMult = 3;

				var upP = controls.UI_UP_P;
				var downP = controls.UI_DOWN_P;
				var leftP = controls.UI_LEFT_P;
				var rightP = controls.UI_LEFT_P;

				if (upP)
				{
					changeSelection(-shiftMult);
					holdTime = 0;
				}
				if (downP)
				{
					changeSelection(shiftMult);
					holdTime = 0;
				}
				if (leftP)
					{
						changeCreditsThing(1);
					}
				if (rightP)
					{
						changeCreditsThing(-1);
					}

				if(controls.UI_DOWN || controls.UI_UP)
				{
					var checkLastHold:Int = Math.floor((holdTime - 0.5) * 10);
					holdTime += elapsed;
					var checkNewHold:Int = Math.floor((holdTime - 0.5) * 10);

					if(holdTime > 0.5 && checkNewHold - checkLastHold > 0)
					{
						changeSelection((checkNewHold - checkLastHold) * (controls.UI_UP ? -shiftMult : shiftMult));
					}
				}
			}

			if(controls.ACCEPT && (creditsStuff[curCreditsThing][curSelected][3] == null || creditsStuff[curSelected][3].length > 4)) {
				CoolUtil.browserLoad(creditsStuff[curCreditsThing][curSelected][3]);
			}
			if (controls.BACK)
			{
				if(colorTween != null) {
					colorTween.cancel();
				}
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new MainMenuState());
				quitting = true;
			}
		}
		
		for (item in grpOptions.members)
		{
			if(!item.bold)
			{
				var lerpVal:Float = CoolUtil.boundTo(elapsed * 12, 0, 1);
				if(item.targetY == 0)
				{
					var lastX:Float = item.x;
					item.screenCenter(X);
					item.x = FlxMath.lerp(lastX, item.x - 70, lerpVal);
				}
				else
				{
					item.x = FlxMath.lerp(item.x, 200 + -40 * Math.abs(item.targetY), lerpVal);
				}
			}
		}
		super.update(elapsed);
	}

	var moveTween:FlxTween = null;
	function changeSelection(change:Int = 0)
	{
		FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
		do {
			curSelected += change;
			if (curSelected < 0)
				curSelected = creditsStuff[curCreditsThing].length - 1;
			if (curSelected >= creditsStuff[curCreditsThing].length)
				curSelected = 0;
		} while(unselectableCheck(curSelected));

		var newColor:Int =  getCurrentBGColor();
		if(newColor != intendedColor) {
			if(colorTween != null) {
				colorTween.cancel();
			}
			intendedColor = newColor;
			colorTween = FlxTween.color(bg, 1, bg.color, intendedColor, {
				onComplete: function(twn:FlxTween) {
					colorTween = null;
				}
			});
		}

		var bullShit:Int = 0;

		for (item in grpOptions.members)
		{
			item.targetY = bullShit - curSelected;
			bullShit++;

			if(!unselectableCheck(bullShit-1)) {
				item.alpha = 0.6;
				if (item.targetY == 0) {
					item.alpha = 1;
				}
			}
		}

		descText.text = creditsStuff[curCreditsThing][curSelected][2];
		descText.y = FlxG.height - descText.height + offsetThing - 60;

		if(moveTween != null) moveTween.cancel();
		moveTween = FlxTween.tween(descText, {y : descText.y + 75}, 0.25, {ease: FlxEase.sineOut});

		descBox.setGraphicSize(Std.int(descText.width + 20), Std.int(descText.height + 25));
		descBox.updateHitbox();
	}
	function changeCreditsThing(change:Int = 0)
		{
			FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
			do {
				curCreditsThing += change;
				if (curCreditsThing < 0)
					curCreditsThing = creditsStuff.length - 1;
				if (curCreditsThing >= creditsStuff.length)
					curCreditsThing = 0;
			} while(unselectableCheck(curSelected));
		}

	/*#if MODS_ALLOWED
	private var modsAdded:Array<String> = [];
	function pushModCreditsToList(folder:String)
	{
		if(modsAdded.contains(folder)) return;

		var creditsFile:String = null;
		if(folder != null && folder.trim().length > 0) creditsFile = Paths.mods(folder + '/data/credits.txt');
		else creditsFile = Paths.mods('data/credits.txt');

		if (FileSystem.exists(creditsFile))
		{
			var firstarray:Array<String> = File.getContent(creditsFile).split('\n');
			for(i in firstarray)
			{
				var arr:Array<String> = i.replace('\\n', '\n').split("::");
				if(arr.length >= 5) arr.push(folder);
				creditsStuff.push(arr);
			}
			creditsStuff.push(['']);
		}
		modsAdded.push(folder);
	}
	#end*/ // cant find a way for mods to be used here ;-;

	function getCurrentBGColor() {
		var bgColor:String = creditsStuff[curCreditsThing][curSelected][4];
		if(!bgColor.startsWith('0x')) {
			bgColor = '0xFF' + bgColor;
		}
		return Std.parseInt(bgColor);
	}

	private function unselectableCheck(num:Int):Bool {
		return creditsStuff[num].length <= 1;
	}
}