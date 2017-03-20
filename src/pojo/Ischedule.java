package pojo;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;



@Entity
@Table(name="ISCHEDULE")
public class Ischedule implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String isid;

    @Temporal( TemporalType.DATE)
	@Column(nullable=false)
	private Date dointerview;

    @Temporal( TemporalType.DATE)
	@Column(nullable=false)
	private Date doiresult;

	@Column(length=10)
	private String eid;

	@Column(nullable=false, length=100)
	private String iplace;

	@Column(nullable=false, length=100)
	private String itime;

	//bi-directional many-to-one association to Vacancy
   // @ManyToOne
	@JoinColumn(name="VID")
	private String vacancy;

    public Ischedule() {
    }

	public String getIsid() {
		return this.isid;
	}

	public void setIsid(String isid) {
		this.isid = isid;
	}

	public Date getDointerview() {
		return this.dointerview;
	}

	public void setDointerview(Date dointerview) {
		this.dointerview = dointerview;
	}

	public Date getDoiresult() {
		return this.doiresult;
	}

	public void setDoiresult(Date doiresult) {
		this.doiresult = doiresult;
	}

	public String getEid() {
		return this.eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getIplace() {
		return this.iplace;
	}

	public void setIplace(String iplace) {
		this.iplace = iplace;
	}

	public String getItime() {
		return this.itime;
	}

	public void setItime(String itime) {
		this.itime = itime;
	}

	public String getVacancy() {
		return this.vacancy;
	}

	public void setVacancy(String vacancy) {
		this.vacancy = vacancy;
	}
	
}