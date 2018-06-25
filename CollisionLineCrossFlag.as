// 線と線の衝突判定
/*
対角線上にヒットしている場合はflagが両方ともTrueになっているとき
*/
class CollisionLineCrossFlag
{
	public var b1:Boolean;
	public var b2:Boolean;

	public function CollisionLineCrossFlag(){
		reset();
	}

	public function reset(){
		b1 = false;
		b2 = false;
	}


	public function CheckHit(r1x:Number,r1y:Number,r2x:Number,r2y:Number,p1x:Number,p1y:Number, p2x:Number,p2y:Number ):Void
	{
		reset();
		IsHitB1(r1x,r1y,r2x,r2y,p1x,p1y,p2x,p2y);
		IsHitB2(p1x,p1y,p2x,p2y,r1x,r1y,r2x,r2y);
	}

	public function IsHit(){
		return b1 == true && b2 == true;
	}


	/**************************************************
	 * 衝突判定関数
	 *-------------------------------------------------
	* 直線 r1-r2と、辺p1-p2がクロスするか判定する
	* クロスする場合は true. しない場合は false.
	***************************************************/
	private function IsHitB1( r1x:Number,r1y:Number,r2x:Number,r2y:Number,p1x:Number,p1y:Number, p2x:Number,p2y:Number ):Void
	{
		var t1:Number;
		var t2:Number;
		
		//2点r1-r2を通る直線に対し、p1、p2がどの位置にあるか計算する
		t1 = (r1x-r2x)*(p1y-r1y)+(r1y-r2y)*(r1x-p1x);
		t2 = (r1x-r2x)*(p2y-r1y)+(r1y-r2y)*(r1x-p2x);
		
		// DebugPrintf(
		// "IsHitB1 isCollisionSideNum r1x: " + r1x.toString() + " r1y: " + r1y.toString() 
		// + " r2x: " + r2x.toString() + " r2y: " + r2y.toString()
		// + " p1x: " + p1x.toString() + " p1y: " + p1y.toString() 
		// + " p2x: " + p2x.toString() + " p2y: " + p2y.toString()
		// + " t1: " + t1.toString() + " t2: " + t2.toString()
		// );
		//それぞれの正負が異なる（積が負になる）か、0（点が直線上にある）
		//ならクロスしている
		if( t1*t2 < 0 || t1 == 0 || t2 == 0 ){
			
			b1 = true; //クロスしている
		} else {
			b1 = false; //クロスしない
		}
	}
	private function IsHitB2( r1x:Number,r1y:Number,r2x:Number,r2y:Number,p1x:Number,p1y:Number, p2x:Number,p2y:Number ):Void
	{
		var t1:Number;
		var t2:Number;
		
		//2点r1-r2を通る直線に対し、p1、p2がどの位置にあるか計算する
		t1 = (r1x-r2x)*(p1y-r1y)+(r1y-r2y)*(r1x-p1x);
		t2 = (r1x-r2x)*(p2y-r1y)+(r1y-r2y)*(r1x-p2x);
		
		// DebugPrintf(
		// "IsHitB2 isCollisionSideNum r1x: " + r1x.toString() + " r1y: " + r1y.toString() 
		// + " r2x: " + r2x.toString() + " r2y: " + r2y.toString()
		// + " p1x: " + p1x.toString() + " p1y: " + p1y.toString() 
		// + " p2x: " + p2x.toString() + " p2y: " + p2y.toString()
		// + " t1: " + t1.toString() + " t2: " + t2.toString()
		// );
		//それぞれの正負が異なる（積が負になる）か、0（点が直線上にある）
		//ならクロスしている
		if( t1*t2 < 0 || t1 == 0 || t2 == 0 ){
			
			b2 = true; //クロスしている
		} else {
			b2 = false; //クロスしない
		}
	}


	private function DebugPrintf(msg:String):Void {
		trace("CollisionLineCrossFlag:"+msg);
	}
}