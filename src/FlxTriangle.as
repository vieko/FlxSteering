package
{
	import flash.display.Shape;
	import flash.geom.Matrix;
	import flash.geom.Point;
	
	import org.flixel.*;

	public class FlxTriangle extends FlxSprite
	{
		protected var _shape:Shape;
		protected var _origin:Point;
		
		public function FlxTriangle(X:Number, Y:Number, color:uint, size:Number,scale:Number)
		{
			super(X,Y);
			
			_shape = new Shape();
			_origin = new Point(X, Y);
			
			var s:Number = size * scale;
			var d:Number = s * 0.75;
			
			_shape.graphics.beginFill(color);
			_shape.graphics.moveTo(-s, -d);
			_shape.graphics.lineTo(s, 0);
			_shape.graphics.lineTo(-s, d);
			_shape.graphics.lineTo(-s, -d);
			_shape.graphics.endFill();	
		}
		
		override public function render():void
		{
			var m:Matrix = new Matrix(1,0,0,1,_origin.x,_origin.y);
			FlxG.buffer.draw(_shape,m,null,null,null,false);
		}
	}
}

