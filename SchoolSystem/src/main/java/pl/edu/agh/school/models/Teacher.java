package pl.edu.agh.school.models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity  
@Table(name="teacher")  
public class Teacher extends User {

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id", updatable=true, insertable=true)
	private Class schoolClass;

	public Class getSchoolClass() {
		return schoolClass;
	}

	public void setSchoolClass(Class schoolClass) {
		this.schoolClass = schoolClass;
	}

	
}