package hr.r.h.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "marker", uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Marker {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "marker_id_seq")
	@SequenceGenerator(name = "marker_id_seq", sequenceName = "marker_id_seq", allocationSize = 1)

	@Column(name = "id")
	private Integer id;

	@Column(name = "person_id")
	private Integer personId;

	@Column(name = "gender")
	private String gender;

	@Column(name = "region")
	private String region;

	@Enumerated(EnumType.STRING)
	@Column(name = "marker_type")
	private MarkerType type;

	@Column(name = "a")
	private String a;

	@Column(name = "b")
	private String b;

	@Column(name = "c")
	private String c;

	@Column(name = "drb1")
	private String drb1;

	public Marker() {

	}

	public Marker(int personId, String gender, String region, MarkerType type, String a, String b, String c,
			String drb1) {
		super();
		this.personId = personId;
		this.gender = gender;
		this.region = region;
		this.type = type;
		this.a = a;
		this.b = b;
		this.c = c;
		this.drb1 = drb1;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getPersonId() {
		return personId;
	}

	public void setPersonId(int personId) {
		this.personId = personId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public MarkerType getType() {
		return type;
	}

	public void setType(MarkerType type) {
		this.type = type;
	}

	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	public String getB() {
		return b;
	}

	public void setB(String b) {
		this.b = b;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getDrb1() {
		return drb1;
	}

	public void setDrb1(String drb1) {
		this.drb1 = drb1;
	}

	@Override
	public String toString() {
		return "Marker [id=" + id + ", personId=" + personId + ", gender=" + gender + ", region=" + region + ", type="
				+ type + ", a=" + a + ", b=" + b + ", c=" + c + ", drb1=" + drb1 + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((a == null) ? 0 : a.hashCode());
		result = prime * result + ((b == null) ? 0 : b.hashCode());
		result = prime * result + ((c == null) ? 0 : c.hashCode());
		result = prime * result + ((drb1 == null) ? 0 : drb1.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + id;
		result = prime * result + personId;
		result = prime * result + ((region == null) ? 0 : region.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Marker other = (Marker) obj;
		if (a == null) {
			if (other.a != null)
				return false;
		} else if (!a.equals(other.a))
			return false;
		if (b == null) {
			if (other.b != null)
				return false;
		} else if (!b.equals(other.b))
			return false;
		if (c == null) {
			if (other.c != null)
				return false;
		} else if (!c.equals(other.c))
			return false;
		if (drb1 == null) {
			if (other.drb1 != null)
				return false;
		} else if (!drb1.equals(other.drb1))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (id != other.id)
			return false;
		if (personId != other.personId)
			return false;
		if (region == null) {
			if (other.region != null)
				return false;
		} else if (!region.equals(other.region))
			return false;
		if (type != other.type)
			return false;
		return true;
	}

}
