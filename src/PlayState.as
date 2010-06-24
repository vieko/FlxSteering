package
{	
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		protected var _fps:FlxText;
		
		private var _seeker:Boid;
		private var _pursuer:Boid;
		
		override public function create():void
		{
			FlxG.mouse.show();	
			
			_fps = new FlxText(FlxG.width-40,0,40).setFormat(null,8,0xffffffff,"right",0xff000000);
			_fps.scrollFactor.x = _fps.scrollFactor.y = 0;
			add(_fps);
			
			_seeker = new Boid(FlxG.width/2,FlxG.height/2,30); add(_seeker);
			_pursuer = new Boid(30,30,30); add(_pursuer);
		}
		
		override public function update():void
		{
			super.update();
			
			//FlxG.log(FlxU.collide(_seeker,_pursuer));
			
			collide();
			
			_fps.text = FlxU.floor(1/FlxG.elapsed)+" fps";
			
			var v:Vector2D = new Vector2D(FlxG.mouse.screenX,FlxG.mouse.screenY);
		
			_seeker.arrive(v);
			_pursuer.pursue(_seeker);
		}
	}
}