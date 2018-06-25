class Rect
{
	public var _x:Number; // x
	public var _y:Number; // y
	public var _w:Number; // z
	public var _h:Number; // w
	
	public function Rect(x:Number, y:Number, w:Number, h:Number) {
		setXYWH(x,y,w,h);
	}
	public function reset():Void{
		_x = 0; _y = 0; _w = 0; _h = 0;
	}
	public function setXYWH(x:Number, y:Number, w:Number, h:Number):Void{
		_x = x;
		_y = y;
		_w = w;
		_h = h;
	}
	public function setLTRB(left:Number, top:Number, right:Number, down:Number):Void{
		_x = left;
		_y = top;
		_w = right-left;
		_h = down-top;
	}


	public function IntersectXY(px:Number, py:Number):Boolean{
		if( _x <= px && px <= _x + _w && _y <= py && py <= _y + _h) return true;
		else return false;
	}

	public function IntersectVec2(p:Vec2Const):Boolean{
		if(_x <= p._x && p._x <= _x + _w  && _y <= p._y && p._y <= _y + _h) return true;
		else return false;
	}
	public function IntersectRect(r:Rect):Boolean{
    	// 当たり判定
		if(
		   Math.abs(r._x - _x) < r._w/2 + _w/2 //横の判定
		&& Math.abs(r._y - _y) < r._h/2 + _h/2 //縦の判定
		){
			return true;
		}
		return false;
	}
	
	// 半分の大きさ
	public function GetHalfWidth():Number{
		return _w / 2.0;
	}
	public function GetHalfHeight():Number{
		return _h / 2.0;
	}
	public function GetQuartWidth():Number{
		return _w / 4.0;
	}
	public function GetQuartHeight():Number{
		return _h / 4.0;
	}
	public function Get3QuartWidth():Number{
		return _w * 3.0 / 4.0;
	}
	public function Get3QuartHeight():Number{
		return _h * 3.0 / 4.0;
	}
	// 中心位置
	public function GetCenterX():Number{
		return _x + _w / 2.0;
	}
	public function GetCenterY():Number{
		return _y + _h / 2.0;
	}

	// lrtb
	public function GetLeftTopX():Number{
		return _x;
	}
	public function GetLeftTopY():Number{
		return _y;
	}
	public function GetLeftBottomX():Number{
		return _x;
	}
	public function GetLeftBottomY():Number{
		return _y + _h;
	}

	public function GetRightTopX():Number{
		return _x + _w;
	}
	public function GetRightTopY():Number{
		return _y;
	}
	public function GetRightBottomX():Number{
		return _x + _w;
	}
	public function GetRightBottomY():Number{
		return _y + _h;
	}

	public function toString():String 
	{ 
		return "Rect(x,y,w,h)=[" + _x.toString() + ", " + _y.toString() + ", " + _w.toString() + ", " + _h.toString() + "]";
	}
}