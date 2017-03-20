package pojoapplicant;

import java.io.Serializable;
import javax.persistence.*;

import pojo.Employee;

import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the APPLICANT database table.
 * 
 */
@Entity
@Table(name="APPLICANT")
public class Applicant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String aid;

	@Column(nullable=false, length=300)
	private String aadd1;

	@Column(length=300)
	private String aadd2;

	@Column(nullable=false, length=20)
	private String acity;

    @Temporal( TemporalType.DATE)
	@Column(nullable=false)
	private Date adob;

    @Temporal( TemporalType.DATE)
	private Date adocreation;

	@Column(nullable=false, length=100)
	private String aemail1;

	@Column(length=100)
	private String aemail2;

	@Column(nullable=false, length=50)
	private String afname;

	@Column(nullable=false, length=1)
	private String agender;

	@Column(nullable=false, precision=15)
	private BigDecimal allno;

	@Column(nullable=false, length=50)
	private String alname;

	@Column(length=50)
	private String amname;

	@Column(nullable=false, precision=10)
	private BigDecimal amobile;

	@Column(nullable=false, length=10)
	private String anationality;

	@Column(nullable=false, length=50)
	private String apassword;

	@Column(nullable=false, precision=6)
	private BigDecimal apincode;

	@Column(nullable=false, length=20)
	private String astate;

	@Column(length=50)
	private String astatus;

	@Column(length=50)
	private String cname;

	@Column(nullable=false, length=50)
	private String frname;

	@Column(nullable=false, length=30)
	private String gbranch;

	@Column(nullable=false, length=100)
	private String gcoll;

	@Column(nullable=false, length=50)
	private String gcourse;

	@Column( precision=5, scale=2)
	private BigDecimal gpercent;

	@Column(nullable=false, length=100)
	private String guni;

	@Column(nullable=false, precision=4)
	private BigDecimal gyoa;

	@Column(nullable=false, precision=4)
	private BigDecimal gyob;

	@Column(nullable=false, length=100)
	private String hscboard;

	@Column( precision=5, scale=2)
	private BigDecimal hscpercent;

	@Column(nullable=false, length=100)
	private String hscsch;

	@Column(nullable=false, precision=4)
	private BigDecimal hscyoa;

	@Column(nullable=false, precision=4)
	private BigDecimal hscyop;

	@Column(precision=2)
	private BigDecimal nom;

	@Column(precision=2)
	private BigDecimal noy;

	@Column(length=1000)
	private String others;

	@Column(length=50)
	private String pgbranch;

	@Column(length=100)
	private String pgcoll;

	@Column(length=50)
	private String pgcourse;

	@Column(precision=3, scale=2)
	private BigDecimal pgpercent;

	@Column(length=100)
	private String pguniv;

	@Column(precision=4)
	private BigDecimal pgyoa;

	@Column(precision=4)
	private BigDecimal pgyop;

	@Column(length=50)
	private String postname;

	@Column(precision=10)
	private BigDecimal salary;

	@Column(nullable=false, length=300)
	private String skills;

	@Column(nullable=false, length=100)
	private String sscboard;

	@Column(precision=5, scale=2)
	private BigDecimal sscpercent;

	@Column(nullable=false, length=100)
	private String sscsch;

	@Column(nullable=false, precision=4)
	private BigDecimal sscyoa;

	@Column(nullable=false, precision=4)
	private BigDecimal sscyop;

	//bi-directional many-to-one association to Employee
    //@ManyToOne
	@JoinColumn(name="REFERENCEID")
    private String referenceid;

    public Applicant() {
    }

	public String getAid() {
		return this.aid;
	}

	public void setAid(String aid) {
		System.out.println("1");
		this.aid = aid;
	}

	public String getAadd1() {
		return this.aadd1;
	}

	public void setAadd1(String aadd1) {
		System.out.println("1");
		this.aadd1 = aadd1;
	}

	public String getAadd2() {
		return this.aadd2;
	}

	public void setAadd2(String aadd2) {
		System.out.println("1");
		this.aadd2 = aadd2;
	}

	public String getAcity() {
		return this.acity;
	}

	public void setAcity(String acity) {
		System.out.println("1");
		this.acity = acity;
	}

	public Date getAdob() {
		return this.adob;
	}

	public void setAdob(Date adob) {
		System.out.println("1");
		this.adob = adob;
	}

	public Date getAdocreation() {
		return this.adocreation;
	}

	public void setAdocreation(Date adocreation) {
		System.out.println("1");
		this.adocreation = adocreation;
	}

	public String getAemail1() {
		
		return this.aemail1;
	}

	public void setAemail1(String aemail1) {
		System.out.println("1");
		this.aemail1 = aemail1;
	}

	public String getAemail2() {
		return this.aemail2;
	}

	public void setAemail2(String aemail2) {
		System.out.println("1");
		this.aemail2 = aemail2;
	}

	public String getAfname() {
		return this.afname;
	}

	public void setAfname(String afname) {
		System.out.println("1");
		this.afname = afname;
	}

	public String getAgender() {
		return this.agender;
	}

	public void setAgender(String agender) {
		System.out.println("1");
		this.agender = agender;
	}

	public BigDecimal getAllno() {
		return this.allno;
	}

	public void setAllno(BigDecimal allno) {
		System.out.println("1");
		this.allno = allno;
	}

	public String getAlname() {
		return this.alname;
	}

	public void setAlname(String alname) {
		System.out.println("1");
		this.alname = alname;
	}

	public String getAmname() {
		return this.amname;
	}

	public void setAmname(String amname) {
		System.out.println("1");
		this.amname = amname;
	}

	public BigDecimal getAmobile() {
		return this.amobile;
	}

	public void setAmobile(BigDecimal amobile) {
		System.out.println("1");
		this.amobile = amobile;
	}

	public String getAnationality() {
		return this.anationality;
	}

	public void setAnationality(String anationality) {
		System.out.println("1");
		this.anationality = anationality;
	}

	public String getApassword() {
		return this.apassword;
	}

	public void setApassword(String apassword) {
		System.out.println("1");
		this.apassword = apassword;
	}

	public BigDecimal getApincode() {
		System.out.println("1");
		return this.apincode;
	}

	public void setApincode(BigDecimal apincode) {
		System.out.println("1");
		this.apincode = apincode;
	}

	public String getAstate() {
		return this.astate;
	}

	public void setAstate(String astate) {
		this.astate = astate;
	}

	public String getAstatus() {
		return this.astatus;
	}

	public void setAstatus(String astatus) {
		this.astatus = astatus;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		System.out.println("1");
		this.cname = cname;
	}

	public String getFrname() {
		return this.frname;
	}

	public void setFrname(String frname) {
		this.frname = frname;
	}

	public String getGbranch() {
		return this.gbranch;
	}

	public void setGbranch(String gbranch) {
		System.out.println("1");
		this.gbranch = gbranch;
	}

	public String getGcoll() {
		return this.gcoll;
	}

	public void setGcoll(String gcoll) {
		this.gcoll = gcoll;
	}

	public String getGcourse() {
		return this.gcourse;
	}

	public void setGcourse(String gcourse) {
		this.gcourse = gcourse;
	}

	public BigDecimal getGpercent() {
		return this.gpercent;
	}

	public void setGpercent(BigDecimal gpercent) {
		this.gpercent = gpercent;
	}

	public String getGuni() {
		return this.guni;
	}

	public void setGuni(String guni) {
		this.guni = guni;
	}

	public BigDecimal getGyoa() {
		return this.gyoa;
	}

	public void setGyoa(BigDecimal gyoa) {
		System.out.println("1");
		this.gyoa = gyoa;
	}

	public BigDecimal getGyob() {
		return this.gyob;
	}

	public void setGyob(BigDecimal gyob) {
		
		System.out.println("1");
		this.gyob = gyob;
	}

	public String getHscboard() {
		return this.hscboard;
	}

	public void setHscboard(String hscboard) {
		System.out.println("1");
		this.hscboard = hscboard;
	}

	public BigDecimal getHscpercent() {
		return this.hscpercent;
	}

	public void setHscpercent(BigDecimal hscpercent) {
		System.out.println("1");
		this.hscpercent = hscpercent;
	}

	public String getHscsch() {
		return this.hscsch;
	}

	public void setHscsch(String hscsch) {
		System.out.println("1");
		this.hscsch = hscsch;
	}

	public BigDecimal getHscyoa() {
		return this.hscyoa;
	}

	public void setHscyoa(BigDecimal hscyoa) {
		System.out.println("1");
		this.hscyoa = hscyoa;
	}

	public BigDecimal getHscyop() {
		return this.hscyop;
	}

	public void setHscyop(BigDecimal hscyop) {
		System.out.println("1");
		this.hscyop = hscyop;
	}

	public BigDecimal getNom() {
		return this.nom;
	}

	public void setNom(BigDecimal nom) {
		System.out.println("1");
		this.nom = nom;
	}

	public BigDecimal getNoy() {
		return this.noy;
	}

	public void setNoy(BigDecimal noy) {
		System.out.println("1");
		this.noy = noy;
	}

	public String getOthers() {
		return this.others;
	}

	public void setOthers(String others) {
		System.out.println("1");
		this.others = others;
	}

	public String getPgbranch() {
		return this.pgbranch;
	}

	public void setPgbranch(String pgbranch) {
		this.pgbranch = pgbranch;
	}

	public String getPgcoll() {
		return this.pgcoll;
	}

	public void setPgcoll(String pgcoll) {
		this.pgcoll = pgcoll;
	}

	public String getPgcourse() {
		return this.pgcourse;
	}

	public void setPgcourse(String pgcourse) {
		this.pgcourse = pgcourse;
	}

	public BigDecimal getPgpercent() {
		return this.pgpercent;
	}

	public void setPgpercent(BigDecimal pgpercent) {
		this.pgpercent = pgpercent;
	}

	public String getPguniv() {
		return this.pguniv;
	}

	public void setPguniv(String pguniv) {
		System.out.println(pguniv);
		this.pguniv = pguniv;
	}

	public BigDecimal getPgyoa() {
		return this.pgyoa;
	}

	public void setPgyoa(BigDecimal pgyoa) {
		this.pgyoa = pgyoa;
	}

	public BigDecimal getPgyop() {
		return this.pgyop;
	}

	public void setPgyop(BigDecimal pgyop) {
		this.pgyop = pgyop;
	}

	public String getPostname() {
		return this.postname;
	}

	public void setPostname(String postname) {
		this.postname = postname;
	}

	public BigDecimal getSalary() {
		return this.salary;
	}

	public void setSalary(BigDecimal salary) {
		System.out.println(salary);
		this.salary = salary;
		
	}

	public String getSkills() {
		return this.skills;
	}

	public void setSkills(String skills) {
		System.out.println("1");
		this.skills = skills;
	}

	public String getSscboard() {
		return this.sscboard;
	}

	public void setSscboard(String sscboard) {
		System.out.println("1");
		this.sscboard = sscboard;
	}

	public BigDecimal getSscpercent() {
		return this.sscpercent;
	}

	public void setSscpercent(BigDecimal sscpercent) {
		this.sscpercent = sscpercent;
	}

	public String getSscsch() {
		return this.sscsch;
	}

	public void setSscsch(String sscsch) {
		this.sscsch = sscsch;
	}

	public BigDecimal getSscyoa() {
		return this.sscyoa;
	}

	public void setSscyoa(BigDecimal sscyoa) {
		this.sscyoa = sscyoa;
	}

	public BigDecimal getSscyop() {
		return this.sscyop;
	}

	public void setSscyop(BigDecimal sscyop) {
		System.out.println(sscyop);
		this.sscyop = sscyop;
	}

	public String getReferenceid() {
		return this.referenceid;
	}

	public void setReferenceid(String  referenceid) {
		System.out.println(referenceid);
		this.referenceid = referenceid;
	}
	
}