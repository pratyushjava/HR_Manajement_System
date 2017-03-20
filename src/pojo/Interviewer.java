package pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the INTERVIEWER database table.
 * 
 */
@Entity
@Table(name="INTERVIEWER")
public class Interviewer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String inid;
	
	@Column(length=10)
	private String eid;

	@Column(length=50)
	private String iefname;

	@Column(length=50)
	private String ielname;

	@Column(length=50)
	private String iemname;

	
	@JoinColumn(name="ISID")
	@Column(length=10)
	private String isid;

    public Interviewer() {
    }

	public String getEid() {
		return this.eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getIefname() {
		return this.iefname;
	}

	public void setIefname(String iefname) {
		this.iefname = iefname;
	}

	public String getIelname() {
		return this.ielname;
	}

	public void setIelname(String ielname) {
		this.ielname = ielname;
	}

	public String getIemname() {
		return this.iemname;
	}

	public void setIemname(String iemname) {
		this.iemname = iemname;
	}

	public String getInid() {
		return this.inid;
	}

	public void setInid(String inid) {
		this.inid = inid;
	}

	public String getIsid() {
		return this.isid;
	}

	public void setIsid(String isid) {
		this.isid = isid;
	}

}