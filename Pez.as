package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;

	
	public class Pez extends MovieClip {
		
		private var speed:int;
		private var limitLeft:int;
		private var limitRight:int;
		private var direction:int;

		public function Pez(icebergLimitLeft:int, icebergLimitRight:int, enemySpeed:int, dir:int) {
			// constructor code
			speed=enemySpeed;
			direction=dir;
			limitRight=icebergLimitRight;
			limitLeft=icebergLimitLeft;
			addEventListener(Event.ENTER_FRAME, update);
			scaleX=direction;
		}
		private function update(e:Event):void
		{
			if(x<limitRight && x>limitLeft){
				x +=speed*direction;
				gotoAndStop('andar');
			}
			else{
				gotoAndStop('idle');
			}
		}
	}
}
