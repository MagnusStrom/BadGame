package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class DeathState extends FlxState
{
	override public function create()
	{
		var playButton:FlxButton;

		var text = new FlxText(100, 10, 300, "You died lol\nScore: " + PlayState.points, 20);
		add(text);
		text.screenCenter();
		text.y -= 100;

		playButton = new FlxButton(0, 0, "Play Again", clickPlay);
		add(playButton);
		playButton.screenCenter();

		super.create();
	}

	function clickPlay()
	{
		FlxG.switchState(new PlayState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
