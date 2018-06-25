/** 台形のFOVのような感じにしてくれるRECT 左側普通 */
class TrapezoidRectR extends TrapezoidRect
{
	public function TrapezoidRectR(x:Number, y:Number, w:Number, h:Number, ifov:Number) {
		super(x,y,w,h,ifov);
	}
	// lrtb
	public function GetRightTopX():Number{
		return _x + _w - SabunWidthZBack();
	}	
}