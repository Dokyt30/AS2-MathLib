class Vec2Const
{
	public var _x:Number;
	public var _y:Number;
	public function Vec2Const(x:Number, y:Number)
	{
		_x = x;
		_y = y;
	}
	public function getx():Number { return _x; }
	public function gety():Number { return _y; }
	public function length():Number 	{ return Math.sqrt(_x * _x + _y * _y); }
	public function lengthSqr():Number 	{ return _x * _x + _y * _y; }
 	public function getDegrees():Number { return Math.atan2(_y, _x) * Vec2.RAD2DEG; }
	public function lerp(to:Vec2Const, t:Number):Vec2 { return new Vec2(_x + t * (to.getx() - _x), _y + t * (to.gety() - _y)); }
	public function toString():String 
	{ 
		return "vec2(x,y)=[" + _x.toString() + ", " + _y.toString() + "]";
	}
}