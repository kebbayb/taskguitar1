import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoImple implements DAO{
	
	@Override
	public List<Guitar> search(String price) {
		List<Guitar> listguitar = new ArrayList<Guitar>();
		String sql = "select * from Guitar where price=?";
		Connection Conn = DBUtil.open();
		try {
			PreparedStatement pstmt = Conn.prepareStatement(sql);
			pstmt.setString(1,price);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Guitar guitar=new Guitar();
				
				guitar.setPrice(price);
				guitar.setBuilder(rs.getString(2));
				guitar.setType(rs.getString(3));
				guitar.setBackWood(rs.getString(4));
				guitar.setID(rs.getString(5));
				listguitar.add(guitar);
			}
			return listguitar;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(Conn);
		}
	return null;
}


@Override
public List<Guitar> guitars() {
	Connection Conn = DBUtil.open();
	String sql = "select * from Guitar";
	List<Guitar> inventory = new ArrayList<Guitar>();
	
	try {
		PreparedStatement pstmt = Conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			Guitar guitar = new Guitar();
			guitar.setID(rs.getString(1));
			guitar.setBuilder(rs.getString(2));
			guitar.setType(rs.getString(3));
			guitar.setBackWood(rs.getString(4));
			
			guitar.setPrice(rs.getString(5));
			inventory.add(guitar);
		}
		return inventory;
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		DBUtil.close(Conn);
	}
	return null;
}



}
