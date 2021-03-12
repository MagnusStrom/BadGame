package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Enemy extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		makeGraphic(106, 506, FlxColor.RED);
		velocity.x = -500;
	}

	function updateMovement()
	{
		if (x < -100)
		{
			x = 1500;
			y = FlxG.random.int(-100, 684);
			PlayState.points += 1;
			velocity.x -= 100;
		}
	}

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}
}
