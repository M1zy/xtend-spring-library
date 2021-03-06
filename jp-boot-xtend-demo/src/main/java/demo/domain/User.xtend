package demo.domain

import javax.persistence.Column
import javax.persistence.Id
import javax.persistence.Transient
import org.eclipse.xtend.lib.annotations.EqualsHashCode
import org.eclipse.xtend.lib.annotations.ToString
import ru.jpoint.xtend.demo.Entity
import org.eclipse.xtend.lib.annotations.Accessors
import javax.persistence.ManyToMany
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.FetchType
import java.util.Set

@Accessors
@Entity
@ToString
@EqualsHashCode
class User {
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id
	
	@Transient
	transient boolean isNew
	
	@Column(nullable = false) 
	String lastName

	@Column(unique = true)	
	String email
			
 	@ManyToMany(fetch=FetchType.EAGER,cascade=MERGE)
	Set<Library> libraries;
}