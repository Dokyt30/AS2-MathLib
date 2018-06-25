/** 台形のFOVのような感じにしてくれるRECT 右側普通 */
class TrapezoidRectL extends TrapezoidRect
{
	public function TrapezoidRectL(x:Number, y:Number, w:Number, h:Number, ifov:Number) {
		super(x,y,w,h, ifov);
	}
	// lrtb
	public function GetLeftTopX():Number{
		return _x + SabunWidthZBack();
	}	
	
}