

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Dialog.ModalExclusionType;
import java.awt.Window.Type;
import javax.swing.JLabel;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JMenuBar;
import javax.swing.JButton;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JRadioButtonMenuItem;
import javax.swing.SwingConstants;


import java.sql.*;
import javax.swing.JMenu;
import javax.swing.JCheckBoxMenuItem;
import java.awt.Button;
import java.awt.TextArea;
import java.awt.Window;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.Console;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.awt.event.ActionEvent;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import java.awt.Color;
import java.awt.Component;

import javax.swing.JTable;
import javax.swing.JTextPane;

public class RESERVATION_SCREEN  extends JFrame {

	public static final String frame = null;
	public JFrame frmReservaton;
	private JTextField tFName;
	private JTextField tFSurname;
	private JTextField tFMobile;
	private JTextField tFArea;
	private JTextField textField;
	private JRadioButton rBDinner;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				
			
				
				try {
					RESERVATION_SCREEN window = new RESERVATION_SCREEN();
					
					window.frmReservaton.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public RESERVATION_SCREEN() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	public void initialize() {
		frmReservaton = new JFrame();
		frmReservaton.setType(Type.UTILITY);
		frmReservaton.setTitle("RESERVATION");
		frmReservaton.setBounds(100, 100, 670, 390);
		frmReservaton.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmReservaton.getContentPane().setLayout(null);
		
		
		
		tFSurname = new JTextField();
		tFSurname.setColumns(10);
		tFSurname.setBounds(434, 128, 212, 20);
		frmReservaton.getContentPane().add(tFSurname);
		
		JLabel lblSurname = new JLabel("SURNAME");
		lblSurname.setForeground(Color.WHITE);
		lblSurname.setBounds(361, 131, 67, 14);
		frmReservaton.getContentPane().add(lblSurname);
		
		JLabel lblName = new JLabel("NAME");
		lblName.setForeground(Color.WHITE);
		lblName.setBounds(361, 100, 63, 14);
		frmReservaton.getContentPane().add(lblName);
		
		JButton makeResButton = new JButton("MAKE RESERVATION");
		
				
				
		makeResButton.setBounds(434, 269, 195, 40);
		frmReservaton.getContentPane().add(makeResButton);
		
		tFName = new JTextField();
		tFName.setBounds(434, 97, 212, 20);
		frmReservaton.getContentPane().add(tFName);
		tFName.setColumns(10);
		
		JLabel lblMobile = new JLabel("MOBILE");
		lblMobile.setForeground(Color.WHITE);
		lblMobile.setBounds(361, 159, 67, 14);
		frmReservaton.getContentPane().add(lblMobile);
		
		tFMobile = new JTextField();
		tFMobile.setColumns(10);
		tFMobile.setBounds(488, 156, 158, 20);
		frmReservaton.getContentPane().add(tFMobile);
		
		tFArea = new JTextField();
		tFArea.setColumns(10);
		tFArea.setBounds(434, 156, 46, 20);
		frmReservaton.getContentPane().add(tFArea);
		
		JLabel lBNotes = new JLabel("NOTES");
		lBNotes.setForeground(Color.WHITE);
		lBNotes.setBounds(361, 191, 67, 14);
		frmReservaton.getContentPane().add(lBNotes);
		
		textField = new JTextField();
		textField.setColumns(10);
		textField.setBounds(434, 188, 212, 20);
		frmReservaton.getContentPane().add(textField);
		
		JLabel lBDate = new JLabel("DATE SELECTION");
		lBDate.setForeground(Color.WHITE);
		lBDate.setBounds(39, 82, 104, 14);
		frmReservaton.getContentPane().add(lBDate);
		
		String [] days = { "2020-5-01" , "2020-5-02" , "2020-5-03" , "2020-5-04" , "2020-5-05" , "2020-5-06" ,   "2020-5-07" , "2020-5-08", 
				"2020-5-09", "2020-5-10" , "2020-5-11", "2020-5-12", "2020-5-13", "2020-5-14", "2020-5-15","2020-5-16","2020-5-17","2020-5-18","2020-5-19",
				"2020-5-20","2020-5-21","2020-5-22","2020-5-23","2020-5-24","2020-5-25","2020-5-26","2020-5-27","2020-5-28","2020-5-29","2020-5-30", "2020-5-31"};
		
		
		JComboBox comboBox = new JComboBox(days);
		comboBox.setBounds(39, 112, 104, 20);
		frmReservaton.getContentPane().add(comboBox);
		
		
		
		
		JLabel lblTimeSelection = new JLabel("Time Selection");
		lblTimeSelection.setForeground(Color.WHITE);
		lblTimeSelection.setBounds(39, 159, 104, 14);
		frmReservaton.getContentPane().add(lblTimeSelection);
		
		JRadioButton rBLunch = new JRadioButton("LUNCH");
		rBLunch.setForeground(Color.WHITE);
		rBLunch.setBackground(new Color(255, 255, 255));
		rBLunch.setBounds(39, 187, 109, 23);
		frmReservaton.getContentPane().add(rBLunch);
		rBLunch.setOpaque(false);
		
		rBDinner = new JRadioButton("DINNER");
		ButtonGroup g = new ButtonGroup();
		g.add(rBDinner);
		g.add(rBLunch);;
		
		rBDinner.setSelected(true);
		
		rBDinner.setForeground(Color.WHITE);
		rBDinner.setBounds(39, 223, 109, 23);
		frmReservaton.getContentPane().add(rBDinner);
		rBDinner.setOpaque(false);
		rBDinner.isSelected();
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon(RESERVATION_SCREEN.class.getResource("/image/reservation.jpg")));
		lblNewLabel.setBackground(Color.WHITE);
		lblNewLabel.setBounds(0, 0, 664, 336);
		frmReservaton.getContentPane().add(lblNewLabel);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(0, 0, 664, 336);
		textArea.setEditable(false);
		frmReservaton.getContentPane().add(textArea);
		
		JMenuBar menuBar = new JMenuBar();
		frmReservaton.setJMenuBar(menuBar);
		
		JButton reservationButton = new JButton("Make Reservation");
		reservationButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			
				RESERVATION_SCREEN rs = new RESERVATION_SCREEN();
			    rs.setVisible(true);
			   rs.frmReservaton.setVisible(true);
				
			   frmReservaton.dispose();
				
				
		   
			
			
			}
		});
		reservationButton.setHorizontalAlignment(SwingConstants.LEFT);
		menuBar.add(reservationButton);
		
		JButton seeResButton = new JButton("See Reservations");
		seeResButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				
				 try {
						// "'INSERT INTO today (date , reservationType , name , area , mobileNumber , notes) VALUES (  ? ,?, ?, ?, ?, ?)'"
						 
					 ResultSet rst = null;
						 
						 Class.forName("com.mysql.jdbc.Driver");
						
						 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reserv" , "root" ,"" );
						 PreparedStatement ps2 = null;
						 String sql = "SELECT * FROM today  ";
			            
						 
						 ps2 = con.prepareStatement(sql);
				         rst = ps2.executeQuery();
				         
				  
				         
				         
				         while(rst.next()) {
				        	
				        	 textArea.append("\n"+rst.getString(1)+ "\t"+rst.getString(2)+"\t"+rst.getString(3)+"\t"+rst.getString(4)+
				        	 "\t"+rst.getString(5)+"\t"+rst.getString(6)+"\t"+rst.getString(7)+"\n" );
				        	// System.out.print("\n"+rst.getString(1));
				           // System.out.print("\t\t"+rst.getString(2));
				            //System.out.print("\t\t"+rst.getString(3));
				           // System.out.print("\t\t"+rst.getString(4));
				         //   System.out.print("\t\t"+rst.getString(5));
				            //System.out.print("\t\t"+rst.getString(6));
				        
				            
				     
				         } 
						 
					 
			
				 
				 } catch (Exception e1 ) {System.out.print(e1);}
					   
					 
					 
					  return;
			
			
		
			
			
			}
		});
		seeResButton.setHorizontalAlignment(SwingConstants.RIGHT);
		menuBar.add(seeResButton);

		     makeResButton.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
			
	
				 try {
					// "'INSERT INTO today (date , reservationType , name , area , mobileNumber , notes) VALUES (  ? ,?, ?, ?, ?, ?)'"
					 
					 
					 
					 Class.forName("com.mysql.jdbc.Driver");
					
					 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reserv" , "root" ,"" );
					 PreparedStatement ps = null;
					 String sql = "INSERT INTO today (date , reservationType , name , surname, area , mobileNumber , notes) VALUES (  ? , ?, ?, ?, ?, ?, ? )";
		               
					        ps = con.prepareStatement(sql);
					        
					  ps.setString( 1, comboBox.getSelectedItem().toString());      
					  if (rBLunch.isSelected()) {
						  ps.setString(2, "Lunch" );
						 
						  
					  }
					  else {
						  ps.setString(2, "Dinner" );
						  
						  
					  }
						 
					        
					   ps.setString(3, tFName.getText());
					   ps.setString(4, tFSurname.getText());
					   ps.setString(5, tFArea.getText());
					   ps.setString(6, tFMobile.getText());
					   ps.setString(7, textField.getText());    
					
					
					   ps.executeUpdate();
					   
					   JOptionPane.showMessageDialog(null, "Reservation Complete!");
					   
				 } catch (Exception e1 ) {System.out.print(e1);}
				   
				 
				 
				  return;
				}
				
		});
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	public Color getRBDinnerBackground() {
		return rBDinner.getBackground();
	}
	public void setRBDinnerBackground(Color background) {
		rBDinner.setBackground(background);
	}

	public void setVisible(boolean b) {
		// TODO Auto-generated method stub
		
	}
}
