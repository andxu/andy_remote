package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Dave Syer
 */
@SpringBootApplication
@RestController
public class Application {

	@RequestMapping("/")
	public String home() {
		int j = 0;
		for (int i = 0; i < 1000; i++) {
			System.out.print('.');
			j++;
		}
		
		return "Hello Docker World1"  + j;
	}


	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}
