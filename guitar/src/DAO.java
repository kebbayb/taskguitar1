

import java.util.List;


public interface DAO {
	public List<Guitar> guitars();

	public List<Guitar> search(String type);
}
