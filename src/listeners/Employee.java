package listeners;

import pojoapplicant.Applicant;
import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the EMPLOYEE database table.
 * 
 */
@Entity
public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String eid;

	private String cid;

	private String did;

	private String efname;

	private String elname;

	private String email;

	private String emname;

	private BigDecimal emobile;

	private String epassword;

	private String pid;
	
	//bi-directional many-to-one association to Applicant
		@OneToMany(mappedBy="referenceid", fetch=FetchType.EAGER)
		private List<Applicant> applicants;

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

}