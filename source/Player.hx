package;

import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
	static inline var SPEED:Float = 500;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		//frames = FlxAtlasFrames.fromSparrow("assets/images/limoDancer.png", 'assets/images/limoDancer.xml');
		//animation.addByPrefix("vibe", "bg dancer sketch PINK", 30, true);
		//setGraphicSize(100);
		updateHitbox();
		makeGraphic(16, 16, FlxColor.GRAY);
		drag.x = drag.y = 2400;
	}

	function updateMovement()
	{
		var up:Bool = false;
		var down:Bool = false;
		var left:Bool = false;
		var right:Bool = false;
		up = FlxG.keys.anyPressed([UP, W]);
		down = FlxG.keys.anyPressed([DOWN, S]);
		left = FlxG.keys.anyPressed([LEFT, A]);
		right = FlxG.keys.anyPressed([RIGHT, D]);
		//check if they're above/below
		if (y < 17) {
			y = 683;
		}
		if (y > 684) {
			y = 19;
		}
		//if (y < 17 || y > 684) {

		//} else {
		if (up || down || left || right)
		{
			if (up)
			{
				velocity.x = 0;
				velocity.y = -SPEED;
			}
			if (down)
			{
				velocity.x = 0;
				velocity.y = SPEED;
			}
		/*	if (left)
			{
				velocity.x = -SPEED;
				velocity.y = 0;
			}
			if (right)
			{
				velocity.x = SPEED;
				velocity.y = 0;
			}*/
		}
	//}
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		updateHitbox();
		super.update(elapsed);
	}
}
