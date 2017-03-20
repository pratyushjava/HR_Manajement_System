 package pojo;



import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the VACANCY database table.
 * 
 */
@Entity
@Table(name="VACANCY")
public class Vacancy implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String vid;

	@Column(length=1000)
	private String descr;
	
	@Column(length=10)
	private String did;

    @Temporal( TemporalType.DATE)
	@Column(nullable=false)
	private Date docl;

    @Temporal( TemporalType.DATE)
	@Column(nullable=false)
	private Date docr;

	@Column(precision=10)
	private BigDecimal novacancy;

	@Column(nullable=false, length=50)
	private String scheduledstatus;
	
	@Column(length=500)
	private String title;

	@Column(nullable=false, precision=2)
	private BigDecimal vcriteria;

	@Column(nullable=false, length=50)
	private String vloc;

	@Column(nullable=false, length=100)
	private String vplace;

	@Column(nullable=false, length=30)
	private String vstatus;

	//bi-directional many-to-one association to Ischedule
	/*@OneToMany(mappedBy="vacancy", fetch=FetchType.EAGER)
	private List<Ischedule> ischedules;

	//bi-directional many-to-one association to Employee
  //  @ManyToOne
	*/@JoinColumn(name="EID")
	private String eid;
	
	
    public Vacancy() {
    }

	public String getVid() {
		return this.vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}
	
	public String getDescr() {
		return this.descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	} 

	public String getDid() {
		return this.did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public Date getDocl() {
		return this.docl;
	}

	public void setDocl(Date docl) {
		this.docl = docl;
	}

	public Date getDocr() {
		return this.docr;
	}

	public void setDocr(Date docr) {
		this.docr = docr;
	}

	public BigDecimal getNovacancy() {
		return this.novacancy;
	}

	public void setNovacancy(BigDecimal novacancy) {
		this.novacancy = novacancy;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getVcriteria() {
		return this.vcriteria;
	}

	public void setVcriteria(BigDecimal vcriteria) {
		this.vcriteria = vcriteria;
	}

	public String getVloc() {
		return this.vloc;
	}

	public void setVloc(String vloc) {
		this.vloc = vloc;
	}

	public String getVplace() {
		return this.vplace;
	}

	public void setVplace(String vplace) {
		this.vplace = vplace;
	}

	public String getVstatus() {
		return this.vstatus;
	}

	public void setVstatus(String vstatus) {
		this.vstatus = vstatus;
	}

	public String getScheduledstatus() {
		return scheduledstatus;
	}

	public void setScheduledstatus(String scheduledstatus) {
		this.scheduledstatus = scheduledstatus;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	/*public List<Ischedule> getIschedules() {
		return this.ischedules;
	}

	public void setIschedules(List<Ischedule> ischedules) {
		this.ischedules = ischedules;
	}
	
	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}*/
	
}