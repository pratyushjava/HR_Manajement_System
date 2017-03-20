package pojoapplicant;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.*;

import java.util.Date;


/**
 * The persistent class for the APPLICANTVACANCY database table.
 * 
 */
@Entity
@Table(name="APPLICANTVACANCY")
public class Applicantvacancy implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String avid;

	@Column(length=50)
	private String afname;

	@Column(length=50)
	private String alname;

	@Column(length=50)
	private String amname;

    @Temporal( TemporalType.DATE)
	private Date applieddate;

	@Column(length=10)
	private String avstatus;

	public BigDecimal getHscpercent() {
		return hscpercent;
	}

	public void setHscpercent(BigDecimal hscpercent) {
		this.hscpercent = hscpercent;
	}

	public BigDecimal getSscpercent() {
		return sscpercent;
	}

	public void setSscpercent(BigDecimal sscpercent) {
		this.sscpercent = sscpercent;
	}

	public BigDecimal getGpercent() {
		return gpercent;
	}

	public void setGpercent(BigDecimal gpercent) {
		this.gpercent = gpercent;
	}

	@Column(length=500)
	private String title;
	
	@Column(nullable=false, precision=3, scale=2)
	private BigDecimal hscpercent;
	
	@Column(nullable=false, precision=3, scale=2)
	private BigDecimal sscpercent;
	
	@Column(nullable=false, precision=3, scale=2)
	private BigDecimal gpercent;

	//uni-directional many-to-one association to Applicant
    //@ManyToOne
	@JoinColumn(name="AID")
	private String aid;

	//uni-directional many-to-one association to Vacancy
    //@ManyToOne
	@JoinColumn(name="VID")
	private String vid;

    public Applicantvacancy() {
    }

	public String getAvid() {
		return this.avid;
	}

	public void setAvid(String avid) {
		this.avid = avid;
	}

	public String getAfname() {
		return this.afname;
	}

	public void setAfname(String afname) {
		this.afname = afname;
	}

	public String getAlname() {
		return this.alname;
	}

	public void setAlname(String alname) {
		this.alname = alname;
	}

	public String getAmname() {
		return this.amname;
	}

	public void setAmname(String amname) {
		this.amname = amname;
	}

	public Date getApplieddate() {
		return this.applieddate;
	}

	public void setApplieddate(Date applieddate) {
		this.applieddate = applieddate;
	}

	public String getAvstatus() {
		return this.avstatus;
	}

	public void setAvstatus(String avstatus) {
		this.avstatus = avstatus;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAid() {
		return this.aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}
	
	public String getVid() {
		return this.vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}
}