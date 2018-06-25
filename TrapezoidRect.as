/** 台形のFOVのような感じにしてくれるRECT */
class TrapezoidRect extends Rect
{
	public var fov;

	public function TrapezoidRect(x:Number, y:Number, w:Number, h:Number, ifov:Number) {
		super(x,y,w,h);
		fov = ifov;
	}
	// 視垂台の大きさの適当なサイズ計算
	public function GetFovSize(vald:Number):Number{
		return  vald * Math.tan( Math.PI * (fov) / 180 ) ;
	}
	// 視垂台の大きさの適当なサイズ計算
	private function SabunWidthZBack():Number{
		return  (_w - GetFovSize(_h)) / 2.0;
	}
	public function SabunWidthFromHeight(iheight:Number):Number{
		return  (_w - GetFovSize(iheight)) / 2.0;
	}
	public function toString():String 
	{ 
		return "TrapezoidRect(x,y,w,h,fov)=[" + _x.toString() + ", " + _y.toString() + ", " + _w.toString() + ", " + _h.toString() + ", " + fov.toString() + "]";
	}
}