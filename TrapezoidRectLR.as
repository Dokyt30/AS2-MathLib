/** 台形のFOVのような感じにしてくれるRECT 左右影響 */
class TrapezoidRectLR extends TrapezoidRect
{
	public function TrapezoidRectLR(x:Number, y:Number, w:Number, h:Number, ifov:Number) {
		super(x,y,w,h,ifov);
	}

	// lrtb
	public function GetLeftTopX():Number{
		return _x + GetFovSize(_h)/2;
	}	
	// lrtb
	public function GetRightTopX():Number{
		return _x + _w - GetFovSize(_h)/2;
	}	
}