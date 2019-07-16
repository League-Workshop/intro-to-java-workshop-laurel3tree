package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) throws InterruptedException {
		
		// START HERE
	Robot rascal = new Robot();

rascal.penDown();
rascal.setPenColor(Color.blue);
rascal.setPenWidth(5);

rascal.move(100);
rascal.turn(90);
rascal.move(100);
rascal.turn(90);
rascal.move(100);
rascal.turn(90);
rascal.move(100);




	
	
	
		
		
	}
}
