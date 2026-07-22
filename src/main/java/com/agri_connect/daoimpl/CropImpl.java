package com.agri_connect.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.agri_connect.dao.CropDao;
import com.agri_connect.dto.Crop;
import com.agri_connect.utility.Connector;

public class CropImpl implements CropDao {

    private Connection con;

    public CropImpl() {
        this.con = Connector.RequestConnector();
    }

    @Override
    public boolean addCrop(Crop cp) {

        String query = "INSERT INTO crop(crop_name, category, season) VALUES(?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, cp.getName());
            ps.setString(2, cp.getCategory());
            ps.setString(3, cp.getSeason());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Crop getCropById(int cropId) {

        String query = "SELECT * FROM crop WHERE crop_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, cropId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Crop cp = new Crop();

                cp.setCrop_id(rs.getInt("crop_id"));
                cp.setName(rs.getString("crop_name"));
                cp.setCategory(rs.getString("category"));
                cp.setSeason(rs.getString("season"));

                return cp;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Crop> getAllCrops() {

        List<Crop> list = new ArrayList<>();

        String query = "SELECT * FROM crop";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Crop cp = new Crop();

                cp.setCrop_id(rs.getInt("crop_id"));
                cp.setName(rs.getString("crop_name"));
                cp.setCategory(rs.getString("category"));
                cp.setSeason(rs.getString("season"));

                list.add(cp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public void updateCrop(Crop cp) {

        String query = "UPDATE crop SET crop_name=?, category=?, season=? WHERE crop_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, cp.getName());
            ps.setString(2, cp.getCategory());
            ps.setString(3, cp.getSeason());
            ps.setInt(4, cp.getCrop_id());

            int result = ps.executeUpdate();

            if (result > 0)
                System.out.println("Crop Updated Successfully");
            else
                System.out.println("Crop Not Found");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCrop(int cropId) {

        String query = "DELETE FROM crop WHERE crop_id=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, cropId);

            int result = ps.executeUpdate();

            if (result > 0)
                System.out.println("Crop Deleted Successfully");
            else
                System.out.println("Crop Not Found");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}