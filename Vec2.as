class Vec2 extends Vec2Const
{
	public static var RAD2DEG:Number = 180 / Math.PI;
	public static var DEG2RAD:Number = Math.PI / 180;
	public function Vec2(x:Number, y:Number) { super(x, y); }
	public function set_x(x:Number):Void { _x = x; }
	public function set_y(y:Number):Void { _y = y; }
	public function set(p:Vec2Const):Vec2
	{
		_x = p.getx();
		_y = p.gety();
		return this;
	}
	public function setXY(x:Number, y:Number):Vec2
	{
		_x = x;
		_y = y;
		return this;
	}
	public function zero():Vec2
	{
		_x = 0;
		_y = 0;
		return this;
	}
}