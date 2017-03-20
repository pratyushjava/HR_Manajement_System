package pojo;

import java.io.Serializable;
import javax.persistence.*;

import pojoapplicant.Applicant;

import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the EMPLOYEE database table.
 * 
 */
@Entity
@Table(name="EMPLOYEE")
public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String eid;

	@Column(length=10)
	private String cid;

	@Column(length=10)
	private String did;

	@Column(nullable=false, length=50)
	private String efname;

	@Column(nullable=false, length=50)
	private String elname;

	@Column(nullable=false, length=100)
	private String email;

	@Column(length=50)
	private String emname;

	@Column(precision=10)
	private BigDecimal emobile;

	@Column(nullable=false, length=100)
	private String epassword;
	
	@Column(nullable=false, length=10)
	private String estatus;
	
	@Column(nullable=false, length=10)
	private String etype;

	@Column(length=10)
	private String pid;

	//bi-directional many-to-one association to Vacancy
	/*@OneToMany(mappedBy="employee", fetch=FetchType.EAGER)
		private List<Vacancy> vacancies;
	
	//bi-directional many-to-one association to Applicant
	@OneToMany(mappedBy="referenceid", fetch=FetchType.EAGER)
	private List<Applicant> applicants;
	*/
	
    public Employee() {
    }

	public String getEid() {
		return this.eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getCid() {
		return this.cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getDid() {
		return this.did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getEfname() {
		return this.efname;
	}

	public void setEfname(String efname) {
		this.efname = efname;
	}

	public String getElname() {
		return this.elname;
	}

	public void setElname(String elname) {
		this.elname = elname;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmname() {
		return this.emname;
	}

	public void setEmname(String emname) {
		this.emname = emname;
	}

	public BigDecimal getEmobile() {
		return this.emobile;
	}

	public void setEmobile(BigDecimal emobile) {
		this.emobile = emobile;
	}

	public String getEpassword() {
		return this.epassword;
	}

	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}

	public String getPid() {
		return this.pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getEstatus() {
		return estatus;
	}

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}

	public String getEtype() {
		return etype;
	}

	public void setEtype(String etype) {
		this.etype = etype;
	}

	/*public List<Vacancy> getVacancies() {
		return this.vacancies;
	}

	public void setVacancies(List<Vacancy> vacancies) {
		this.vacancies = vacancies;
	}*/
	
}