import java.sql.*;
import javax.swing.JFrame;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.ImageIcon;

import java.awt.Window.Type;
import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
public class LOGIN_SCREEN {

	public JFrame frmLognScreen;
	public JTextField tfUser;
	private JPasswordField passwordField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
		
			public void run() {
				try {
					LOGIN_SCREEN window = new LOGIN_SCREEN();
					RESERVATION_SCREEN rs = new RESERVATION_SCREEN();
					rs.setVisible(true);
					window.frmLognScreen.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public LOGIN_SCREEN() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	public void initialize() {
		frmLognScreen = new JFrame();
		frmLognScreen.setType(Type.UTILITY);
		frmLognScreen.setResizable(false);
		frmLognScreen.setTitle("LOGIN ");
		frmLognScreen.setBounds(100, 100, 670, 390);
		frmLognScreen.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JButton loginButton = new JButton("LOGIN");
		loginButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			
			
				 try {
				
						 
					    ResultSet rst2 = null;
						 
						 Class.forName("com.mysql.jdbc.Driver");
						
						 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reserv" , "root" ,"" );
						 PreparedStatement ps2 = null;
						 String sql2 = "SELECT * FROM login WHERE userName = '"+tfUser.getText()+"' and password= '"+passwordField.getText()+"'"; 
			            
						 
						 ps2 = con.prepareStatement(sql2);
				         rst2 = ps2.executeQuery(sql2);
				         
				  
				         
				         
				         if(rst2.next()) {
				      
				        	 RESERVATION_SCREEN rs = new RESERVATION_SCREEN();
							    rs.setVisible(true);
							   rs.frmReservaton.setVisible(true);
							   frmLognScreen.dispose();
						       
				     
				         } 
						 
				         else {
				        	 
				        	 JOptionPane.showMessageDialog(null, "Wrong Username or Password");
				        	 
				         }
			
				 
				 } catch (Exception e1 ) {System.out.print(e1);}
					   
					 
					 
					  return;
				
				
				
			
			
			}
		});
		
		loginButton.setBounds(522, 265, 98, 20);
	
		frmLognScreen.getContentPane().setLayout(null);
		
		JLabel lblNewLabel = new JLabel("RESERVATIONS");
		lblNewLabel.setForeground(Color.WHITE);
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 25));
		lblNewLabel.setBounds(243, 25, 289, 54);
		frmLognScreen.getContentPane().add(lblNewLabel);
		frmLognScreen.getContentPane().add(loginButton);
		
		JLabel lblUsername = new JLabel("USERNAME");
		lblUsername.setForeground(Color.WHITE);
		lblUsername.setBounds(422, 160, 78, 14);
		frmLognScreen.getContentPane().add(lblUsername);
		
		JLabel lblPassword = new JLabel("PASSWORD");
		lblPassword.setForeground(Color.WHITE);
		lblPassword.setBounds(422, 195, 78, 14);
		frmLognScreen.getContentPane().add(lblPassword);
		
		tfUser = new JTextField();
		tfUser.setBounds(522, 157, 98, 20);
		frmLognScreen.getContentPane().add(tfUser);
		tfUser.setColumns(10);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(522, 192, 98, 20);
		frmLognScreen.getContentPane().add(passwordField);
		
		JLabel lbImage = new JLabel("");
		lbImage.setIcon(new ImageIcon(LOGIN_SCREEN.class.getResource("/image/login.png")));
		lbImage.setBounds(0, 0, 664, 361);
	      frmLognScreen.getContentPane().add(lbImage);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
}

