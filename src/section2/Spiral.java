package section2;

import org.jointheleague.graphical.robot.Robot;

public class Spiral {

	public static void main(String[] args) {
		// 1. Create a new Robot
		Robot rob = new Robot("batman");
		// 5. Set your robot's pen down 
		rob.penDown();
		// 3. Set the robot to go at max speed (100)
		rob.setSpeed(100);
		// 4. Use a for loop to repeat steps #7 to #8, 75 times
		for (int j = 0; j < 75; j++) {
			
		
			// 7. Change the pen color to random
		rob.setRandomPenColor();
			// 6. Move the robot 5 times the loop counter (5*i)
			rob.move(5*j);
			// 2. Turn the robot 360/7 degrees to the right
		rob.turn(360/7);
			// 8. Set the pen width to i
			rob.setPenWidth(j);
		}
	}
}
