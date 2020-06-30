package demo.domain

import javax.persistence.Column
import javax.persistence.Id
import javax.persistence.Transient
import org.eclipse.xtend.lib.annotations.EqualsHashCode
import org.eclipse.xtend.lib.annotations.ToString
import ru.jpoint.xtend.demo.Entity
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.Set
import javax.persistence.ManyToMany

@Accessors
@Entity
@ToString
@EqualsHashCode
class User {
	@Id 
	Long id
	
	@Transient
	transient boolean isNew
	
	@Column(nullable = false) 
	String lastName

	@Column(unique = true)	
	String email
			
	@ManyToMany
	Set<Library> libraries;
}