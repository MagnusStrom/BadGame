package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxCollision;

class PlayState extends FlxState
{
	public static var points:Int = 0;

	var player:Player;
	var bad:Enemy;
	var text:FlxText;
	var text2:FlxText;
	var text3:FlxText;

	override public function create()
	{

		text = new FlxText(100, 10, 300, "X: Poop Fart", 20);
		add(text);
		text2 = new FlxText(100, 50, 300, "Y: Poop Fart 2", 20);
		add(text2);

		text3 = new FlxText(100, 90, 300, "Points: 0", 20);
		add(text3);

		player = new Player(20, 20);
		add(player);
		var i:Int;
		//	for (i in 0...20)
		//	{
		bad = new Enemy(20, 20);
		bad.animation.play("vibe");
		add(bad);
		bad.screenCenter();
		//	}
		super.create();
	}

	override public function update(elapsed:Float)
	{
		text.text = "X: " + player.x;
		text2.text = "Y: " + player.y;
		text3.text = "Points: " + points;
		super.update(elapsed);
		//	trace(bad.x);
		//	trace(bad.y);
		// "Use sparingly" Hell naw bitch time to pixelperfectcheck EVERY FRAME
		if (FlxCollision.pixelPerfectCheck(player, bad, 1))
		{
			FlxG.switchState(new DeathState());
		}
		// trace(FlxCollision.pixelPerfectCheck(player, bad, 1));
	}
}
