package com.example.asm1.Dao;

import com.example.asm1.Model.Products;
import com.example.asm1.Utils.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    Connection connection = ConnectionUtil.getConnection();


    public List<Products> getListProduct(){
        List<Products> list = new ArrayList<>();
        String sql = "SELECT * FROM product";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                Products p = new Products();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setAddress(rs.getString("address"));
                p.setPhone(rs.getInt("phone"));
                list.add(p);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;

    }

    public boolean UpdateProduct(Products p){
        boolean rowUpdate;
        String sql = "UPDATE product SET name = ? , email =?, Address =?, phone = ? where id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,p.getName());
            ps.setString(2,p.getEmail());
            ps.setString(3,p.getAddress());
            ps.setInt(4,p.getPhone());
            rowUpdate = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rowUpdate;
    }

    public String DeleteProduct(int id){
        String sql = "DELETE FROM products WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            int isSuccess = ps.executeUpdate();
            if (isSuccess > 0){
                return "success";
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return "fail";
    }

    public String insertUser(Products product){
        int Status = 0;
        String sql = "INSERT INTO product(name, email, address, phone) VALUE(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getEmail());
            ps.setString(3, product.getAddress());
            ps.setInt(4, product.getPhone());
            Status = ps.executeUpdate();
            return product.toString();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
