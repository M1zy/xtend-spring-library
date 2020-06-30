package demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import demo.domain.Library;
import demo.domain.LibraryRepository;

@SpringBootApplication
public class DemoApplication implements CommandLineRunner {
	@Autowired
	LibraryRepository libraryRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
	
	@Override
	public void run(String... args) throws Exception {
		if(args.length==0) {
			System.out.println("You have not provided any arguments!");
		}
		Library library = new Library();
		library.setAddress("address");
		library.setName("Name");
		libraryRepository.save(library);
	}
}
