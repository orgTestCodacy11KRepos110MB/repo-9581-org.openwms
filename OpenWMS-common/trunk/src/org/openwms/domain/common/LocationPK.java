/*
 * OpenWMS, the Open Warehouse Management System
 * 
 * Distributable under LGPL license.
 * See terms of license at gnu.org.
 */
package org.openwms.domain.common;

import java.io.Serializable;

import javax.persistence.Embeddable;

/**
 * This value type is the primary key of the <code>Location</code> entity.
 * 
 * @author <a href="heiko.scherrer@gmx.de">Heiko Scherrer</a>
 * @version $Revision$
 */
@Embeddable
public class LocationPK implements Serializable {

	private static final long serialVersionUID = 1L;

	private String area;

	private String aisle;

	private String x;

	private String y;

	private String z;

	/* ----------------------------- methods ------------------- */
	public LocationPK() {
		super();
	}

	/**
	 * Create a new LocationPK.
	 * 
	 * @param area
	 * @param aisle
	 * @param x
	 * @param y
	 * @param z
	 */
	public LocationPK(String area, String aisle, String x, String y, String z) {
		super();
		this.area = area;
		this.aisle = aisle;
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
	 * Get the area coordinate.
	 * 
	 * @return - area
	 */
	public String getArea() {
		return this.area;
	}

	/**
	 * Get the aisle coordinate.
	 * 
	 * @return - aisle
	 */
	public String getAisle() {
		return this.aisle;
	}

	/**
	 * Get the x coordinate.
	 * 
	 * @return - x
	 */
	public String getX() {
		return this.x;
	}

	/**
	 * Get the y coordinate.
	 * 
	 * @return - y
	 */
	public String getY() {
		return this.y;
	}

	/**
	 * Get the z coordinate.
	 * 
	 * @return - z
	 */
	public String getZ() {
		return this.z;
	}

	@Override
	public boolean equals(Object o) {
		if (o == this) {
			return true;
		}
		if (!(o instanceof LocationPK)) {
			return false;
		}
		LocationPK other = (LocationPK) o;
		return this.y.equals(other.y) && this.x.equals(other.x) && this.area.equals(other.area)
				&& this.z.equals(other.z) && this.aisle.equals(other.aisle);
	}

	@Override
	public int hashCode() {
		return this.y.hashCode() ^ this.x.hashCode() ^ this.area.hashCode() ^ this.z.hashCode() ^ this.aisle.hashCode();
	}

}
