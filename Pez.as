package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;

	
	public class Pez extends MovieClip {
		
		private var speed:int;
		private var limitLeft:int;
		private var limitRight:int;
		private var direction:int;
		private var dead:Boolean;

		public function Pez(icebergLimitLeft:int, icebergLimitRight:int, enemySpeed:int, dir:int) {
			// constructor code
			speed=enemySpeed;
			direction=dir;
			limitRight=icebergLimitRight;
			limitLeft=icebergLimitLeft;
			addEventListener(Event.ENTER_FRAME, update);
			scaleX=1.5*direction;
			scaleY=1.5;
			dead=true;
			visible=false;
		}
		public function Die(){
			dead=true;
			visible=false;
		}
		public function Respawn(dir:int){
			dead=false;
			visible=true;
			scaleX=1.5*dir;
			scaleY=1.5;
			direction=dir;
		}
		public function isDead():Boolean{
			return dead;
		}
		private function update(e:Event):void
		{
			if(!dead){
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
}
