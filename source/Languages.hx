package;
import ClientPrefs;

class Languages
{
    public function new() {

    }
    /*public static var LanguageList:Array<String> = [
        "English (US)",
        "Pirate Speak"
    ];*/

    //static var errorText:String = "ERROR FINDING STRING"; // this is unused, it was going to appear when the game couldn't find a string but I changed that

    public static var curLanguage:Int = 0; // idk what I'll use this for but in case I use it it's here
    public static var languageStrings:Map<String, Dynamic> = [
        'lowQuality' => 'lowQuality', // this is set so that if the game can't find a string it defaults to the codename of the string (for example: if it can't find lowQuality and the language is English, it returns "lowQuality" instead of "Low Quality")
        'lowQualityDesc' => 'lowQualityDesc',
        'antiAliasing' => 'antiAliasing',
        'antiAliasingDesc' => 'antiAliasingDesc',
        'shaders' => 'shaders',
        'shadersDesc' => 'shadersDesc',
        'language' => 'language',
        'languageDesc' => 'languageDesc'
    ];

    public function loadLanguage(lang:String) {
        if (lang == "English (US)") { // DEFAULT LANGUAGE, EDIT THIS IF YOU WANT DIFFERENT STRINGS (and you speak English)
            languageStrings.set('lowQuality', 'Low Quality');
            languageStrings.set('lowQualityDesc', 'If checked, disables some background details,\ndecreases loading times and improves performance.');
            languageStrings.set('antiAliasing', 'Anti-Aliasing');
            languageStrings.set('antiAliasingDesc', 'If unchecked, disables anti-aliasing, increases performance\nat the cost of sharper visuals.');
            languageStrings.set('language', "Language:");
            languageStrings.set('languageDesc', "What language do you prefer?");
            languageStrings.set('personalBest', 'PERSONAL BEST: ');
        }
        else if (lang == "Spanish") { // IDIOMA PREDETERMINADO, EDITA ESTO SI QUIERES CADENAS DIFERENTES (y hablas español)
            languageStrings.set('lowQuality', 'Baja calidad');
            languageStrings.set('lowQualityDesc', 'Si está marcado, desactiva algunos detalles en segundo plano,\ndisminuye los tiempos de carga y mejora el rendimiento.');
            languageStrings.set('antiAliasing', 'Antialiasing');
            languageStrings.set('antiAliasingDesc', 'Si no está marcado, desactiva el suavizado y aumenta el rendimiento a costa de imágenes más nítidas.');
            languageStrings.set('language', "Idioma:");
            languageStrings.set('languageDesc', "¿Qué idioma prefieres?");
            languageStrings.set('personalBest', 'MEJORES PERSONALES: ');
        }
        else if (lang == "Brunish") {
            languageStrings.set('lowQuality', 'Saffœd Quality');
            languageStrings.set('lowQualityDesc', 'Ist checked, dajaS para background detailS,\ndecreaseS loadN timeS conj improveS performance.');
            languageStrings.set('antiAliasing', 'Anti-AliasN');
            languageStrings.set('antiAliasingDesc', 'Ist unchecked, dajaS anti-aliasN, increaseS performance\nema ze cost zos sharpR visualS.');
            languageStrings.set('language', "Dogspek:");
            languageStrings.set('languageDesc', "Qes dogspek pol omet prefer?");
            languageStrings.set('personalBest', 'PERSONAL EVRIE: ');
        }
        else if (lang == "Pirate Speak") { // THE ORIGINAL THING, MAKE YER CHANGES HERE IF YE WANT TO HAVE CUSTOMIZATION (and ye speak like us)
            languageStrings.set('lowQuality', 'Simpler Seas');
            languageStrings.set('lowQualityDesc', #if desktop "Check this if ye don't wanna see some of the crew in the back!\nMakes yer PC swifter!" #else "Check this if ye don't wanna see some of the crew in the back!\nMakes yer device swifter!" #end);
            languageStrings.set('antiAliasing', 'Smoother Screen');
            languageStrings.set('antiAliasingDesc', "If ye don't want rubbish game play, turn this off!\nYer gonna see rougher stuff though!");
            languageStrings.set('language', "Language:");
            languageStrings.set('languageDesc', "What's the language ye speak?");
            languageStrings.set('personalBest', 'MOST TREASURE: ');
        }
        return lang;
    }

    public static function getString(str:String) {
        return languageStrings[str];
    }
}