package  
{
	
	import flash.display.MovieClip;
	import flash.events.Event;

	public class Bala extends MovieClip 
	{
		private var right_:Boolean;
		public function Bala(right:Boolean) 
		{			
			right_ = right;
			addEventListener(Event.ENTER_FRAME, update);					//Move
			if(!right_)
			{
				scaleX = -1;
			}
		}
		private function update(e:Event):void
		{
			if(!right_)
				x -= 20;
			else
				x += 20;
		}
		
	}
}
