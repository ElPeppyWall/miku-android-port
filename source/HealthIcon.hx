package;

import flixel.FlxSprite;
import utils.AndroidData;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;
	var data:AndroidData = new AndroidData();

	public var iconScale:Float = 1;
	public var iconSize:Float;
	public var defualtIconScale:Float = 1;

	var pixelIcons:Array<String> = ["bf-pixel", "senpai", "senpai-angry", "spirit"];

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		var shit:Bool = data.getIcon();
		
		if (!shit){
	    	loadGraphic(Paths.image('iconGrid'), true, 150, 150);
		}
		else{
		    loadGraphic(Paths.image('iconGridB'), true, 150, 150);
		}
		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('miku', [10, 11], 0, false, isPlayer);
		animation.add('miku-mad', [24, 25], 0, false, isPlayer);
		animation.add('hexVirus', [26, 27], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		
		antialiasing = !pixelIcons.contains(char);
		
		animation.play(char);
		scrollFactor.set();
		
		iconScale = defualtIconScale;
		iconSize = width;
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		setGraphicSize(Std.int(iconSize * iconScale));
		updateHitbox();

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
