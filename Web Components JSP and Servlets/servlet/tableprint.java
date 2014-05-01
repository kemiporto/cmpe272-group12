package com.servlet;

import java.util.Date;


public class tableprint implements Comparable<tableprint>{
	
	private double y;
	private Date x;
	private String Source;
	 
	public tableprint(String newy,String newx, String newSource){
		y=Double.valueOf(newy).doubleValue();
		x=new Date(newx);
		Source=newSource;
	}
	
	public double Gety(){
		return y;	
	}
	
	public void Sety(double newy){
		 y = newy;	
	}

	public Date Getx(){
		return x;	
	}
	
	public void Setx(Date newx){
		 x = newx;	
	}
	
	public String GetSource(){
		return Source;	
	}
	
	public void SetSource(String newSource){
		 Source = newSource;	
	}

	@Override
	public int compareTo(tableprint o) {
		if(this.x.before(o.Getx())){
			return -1;
		}else if(this.x.after(o.Getx())){
			return 1;
		}
		return 0;
	}
}
