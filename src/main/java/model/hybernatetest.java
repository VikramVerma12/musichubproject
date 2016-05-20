package model;
import java.util.*;
import model.Data;


public class hybernatetest {

	
	
	public List<Data> list_data(){
		List<Data> l = new ArrayList<Data>();
		l.add(new Data("Guitar",001,"Long Guitar",5000,20,"resources/images/image1.jpg"));
		l.add(new Data("Violin",002,"Good Violin",15000,2,"resources/images/image2.jpg"));
		l.add(new Data("Pianio",003,"Small Piano",9000,22,"resources/images/image3.jpg"));		
		l.add(new Data("Guitar",001,"Long Guitar",5000,20,"resources/images/image1.jpg"));
		l.add(new Data("Violin",002,"Good Violin",15000,2,"resources/images/image2.jpg"));
		l.add(new Data("Pianio",003,"Small Piano",9000,22,"resources/images/image3.jpg"));	
		l.add(new Data("Guitar",001,"Long Guitar",5000,20,"resources/images/image1.jpg"));
		l.add(new Data("Violin",002,"Good Violin",15000,2,"resources/images/image2.jpg"));
		l.add(new Data("Pianio",003,"Small Piano",9000,22,"resources/images/image3.jpg"));	
		
		/*for (Data d : l) {
		System.out.println(d);	   
		 }*/	
		 
		 return l;
		 
	}
	
}
