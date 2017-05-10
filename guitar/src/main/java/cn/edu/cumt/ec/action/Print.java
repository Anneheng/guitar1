package cn.edu.cumt.ec.action;

import java.sql.*;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.cumt.ec.entity.News;
import cn.edu.cumt.ec.dbutil.DbUtil;

public class Print extends ActionSupport{
  protected List guitars;

  public Print() {
    guitars = new LinkedList();
  }

  public void addGuitar() throws SQLException {
	  DbUtil db=new DbUtil();
		String sql="select * from guitar";
		Connection conn=DriverManager.getConnection("jdbc:sqlite://d:/sqlite/guitar.db");
		Statement stat = conn.createStatement();
		ResultSet rs=stat.executeQuery(sql);
		News guitar = null;
		try{
			while(rs.next()){					
				guitar = new News(rs.getString(1),rs.getString(1),rs.getString(1),rs.getString(1),rs.getString(1),rs.getString(1),rs.getDouble(7));
				guitars.add(guitar);
			}
			rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
    
  }

  public News getGuitar(String serialNumber) {
    for (Iterator i = guitars.iterator(); i.hasNext(); ) {
    	News guitar = (News)i.next();
      if (guitar.getSerialNumber().equals(serialNumber)) {
        return guitar;
      }
    }
    return null;
  }

  public List search(News searchGuitar) {
    List matchingGuitars = new LinkedList();
    for (Iterator i = guitars.iterator(); i.hasNext(); ) {
    	News guitar = (News)i.next();
      if (searchGuitar.getBuilder() != guitar.getBuilder())
        continue;
      String model = searchGuitar.getModel().toLowerCase();
      if ((model != null) && (!model.equals("")) &&
          (!model.equals(guitar.getModel().toLowerCase())))
        continue;
      if (searchGuitar.getType() != guitar.getType())
        continue;
      if (searchGuitar.getBackWood() != guitar.getBackWood())
        continue;
      if (searchGuitar.getTopWood() != guitar.getTopWood())
        continue;
    }
    return matchingGuitars;
  }
}