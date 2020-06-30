package demo.domain

import javax.persistence.Column
import javax.persistence.Id
import javax.persistence.Transient
import org.eclipse.xtend.lib.annotations.EqualsHashCode
import org.eclipse.xtend.lib.annotations.ToString
import ru.jpoint.xtend.demo.Entity
import org.eclipse.xtend.lib.annotations.Accessors
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType

@Accessors
@Entity
@ToString
@EqualsHashCode
class Library {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id
	
	def void setId(Long id) {
    	this.id = id;
  	}

	@Transient
	transient boolean isNew
	
	@Column(nullable = false) 
	String name
	
	@Column(nullable = false)
	String address;
}