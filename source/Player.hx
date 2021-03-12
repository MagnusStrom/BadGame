package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;

class Player extends FlxSprite
{
	static inline var SPEED:Float = 700;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		makeGraphic(16, 16, FlxColor.GRAY);
		drag.x = drag.y = 1600;
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
		/*if (up && down)
				up = down = false;
			if (left && right)
				left = right = false; */
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
			if (left)
			{
				velocity.x = -SPEED;
				velocity.y = 0;
			}
			if (right)
			{
				velocity.x = SPEED;
				velocity.y = 0;
			}
		}
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}
}
