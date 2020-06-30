package demo.domain

import javax.persistence.Column
import javax.persistence.Id
import javax.persistence.Transient
import org.eclipse.xtend.lib.annotations.EqualsHashCode
import org.eclipse.xtend.lib.annotations.ToString
import ru.jpoint.xtend.demo.Entity
import org.eclipse.xtend.lib.annotations.Accessors
import javax.persistence.ManyToMany
import java.util.Set
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType

@Accessors
@Entity
@ToString
@EqualsHashCode
class Book {
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id
	
	@Transient
	transient boolean isNew
	
	@Column(nullable = false) 
	String name

	@Column	
	String description
	
	@Column
	Integer year;
			
 	@ManyToMany
    Set<Library> libraries;
}