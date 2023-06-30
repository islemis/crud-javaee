package Entities;

public class Fournpro {

	private int id_table	;
private 	int id ;
	private String id_porduit	;
	public int getId_table() {
		return id_table;
	}
	public void setId_table(int id_table) {
		this.id_table = id_table;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Fournpro(int id_table, int id, String id_porduit) {
		super();
		this.id_table = id_table;
		this.id = id;
		this.id_porduit = id_porduit;
	}
	@Override
	public String toString() {
		return "Fournpro [id_table=" + id_table + ", id=" + id + ", id_porduit=" + id_porduit + "]";
	}
	public String getId_porduit() {
		return id_porduit;
	}
	public void setId_porduit(String id_porduit) {
		this.id_porduit = id_porduit;
	}
	
}
