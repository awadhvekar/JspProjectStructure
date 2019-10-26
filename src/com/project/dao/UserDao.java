package com.project.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.project.bean.UserBean;
import com.project.common.MySQLDbConnection;

public class UserDao
{
	public static List<UserBean> getAllUserRecords()
	{
		List<UserBean> userList = new ArrayList<UserBean>();
		Connection mySqlCon = null;
		
		try
		{
			mySqlCon = MySQLDbConnection.getConnection();
			PreparedStatement ps = mySqlCon.prepareStatement("SELECT * FROM register");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				UserBean user = new UserBean();
				
				user.setId(rs.getInt("Id"));
				user.setName(rs.getString("name"));  
				user.setPassword(rs.getString("password"));  
				user.setEmail(rs.getString("email"));  
				user.setSex(rs.getString("sex"));  
				user.setCountry(rs.getString("country"));
				
				userList.add(user);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("getAllUserRecords(): "+e);
		}
		finally
		{
			if(mySqlCon != null)
			{
				try
				{
					mySqlCon.close();
				}
				catch(SQLException e)
				{
					e.getSuppressed();
				}
			}
		}
		
		return userList;
	}
	
	public static int insertUser(UserBean user)
	{
		Connection mySqlCon = null;
		int status = 0;
		
		try
		{
			mySqlCon = MySQLDbConnection.getConnection();
			PreparedStatement ps = mySqlCon.prepareStatement("INSERT INTO register (name,password,email,sex,country) VALUES (?,?,?,?,?)");
			
			ps.setString(1,user.getName());  
	        ps.setString(2,user.getPassword());  
	        ps.setString(3,user.getEmail());  
	        ps.setString(4,user.getSex());  
	        ps.setString(5,user.getCountry());
	        
	        status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("insertUser(): "+e);
		}
		finally
		{
			if(mySqlCon != null)
			{
				try
				{
					mySqlCon.close();
				}
				catch(SQLException e)
				{
					e.getSuppressed();
				}
			}
		}
		
		return status;
	}
	
	public static UserBean getUserById(int id)
	{
		UserBean user = null;
		Connection mySqlCon = null;
		
		try
		{
			mySqlCon = MySQLDbConnection.getConnection();
			PreparedStatement ps = mySqlCon.prepareStatement("SELECT * FROM register WHERE id=?");
			
			ps.setInt(1,id);
	        ResultSet rs = ps.executeQuery();
	        
	        while(rs.next())
	        {
	        	user = new UserBean();
	        	user.setId(rs.getInt("id"));  
	        	user.setName(rs.getString("name"));  
	        	user.setPassword(rs.getString("password"));  
	        	user.setEmail(rs.getString("email"));  
	        	user.setSex(rs.getString("sex"));  
	        	user.setCountry(rs.getString("country"));
	        }
		}
		catch(Exception e)
		{
			System.out.println("getUserById(): "+e);
		}
		finally
		{
			if(mySqlCon != null)
			{
				try
				{
					mySqlCon.close();
				}
				catch(SQLException e)
				{
					e.getSuppressed();
				}
			}
		}
		
		return user;
	}
	
	public static int updateUser(UserBean user)
	{
		int status=0;
		Connection mySqlCon = null;
		
		try
		{
			mySqlCon = MySQLDbConnection.getConnection();
			PreparedStatement ps = mySqlCon.prepareStatement("UPDATE register SET name=?,password=?,email=?,sex=?,country=? WHERE id=?");
			
			ps.setString(1,user.getName());  
	        ps.setString(2,user.getPassword());  
	        ps.setString(3,user.getEmail());  
	        ps.setString(4,user.getSex());  
	        ps.setString(5,user.getCountry());
	        ps.setInt(6, user.getId());
	        
	        status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("insertUser(): "+e);
		}
		finally
		{
			if(mySqlCon != null)
			{
				try
				{
					mySqlCon.close();
				}
				catch(SQLException e)
				{
					e.getSuppressed();
				}
			}
		}
		
		return status;
	}
	
	public static int deleteUser(UserBean user)
	{
		int status=0;
		Connection mySqlCon = null;
		
		try
		{
			mySqlCon = MySQLDbConnection.getConnection();
			PreparedStatement ps = mySqlCon.prepareStatement("DELETE FROM register WHERE id=?");
			
	        ps.setInt(1, user.getId());
	        
	        status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("insertUser(): "+e);
		}
		finally
		{
			if(mySqlCon != null)
			{
				try
				{
					mySqlCon.close();
				}
				catch(SQLException e)
				{
					e.getSuppressed();
				}
			}
		}
		
		return status;
	}
}
