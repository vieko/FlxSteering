package
{
	import org.flixel.*;
	
	[SWF(width="640", height="480", backgroundColor="#222222")]
	[Frame(factoryClass="Preloader")]
	
	public class FlxSteering extends FlxGame
	{	
		public function FlxSteering()
		{
			super(640, 480, PlayState, 1);
			FlxState.bgColor = 0xffff0000;	
		}
	}
}