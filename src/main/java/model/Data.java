package model;


 
public class Data 
{
   
	
	    private String  Group_Name;
	     

	    private int Product_Id;
	 

	    private String Name;
	 
	 
	    private int Price;
	 
	    private int  Qty;
	    
	    private String Image_path;
	     
	    Data(String Group_Name ,int Product_Id ,String Name , int Price , int Qty , String Image_path){
			this.Group_Name=Group_Name;
			this.Name=Name;
			this.Price=Price;
			this.Product_Id=Product_Id;
			this.Qty=Qty;
			this.Image_path=Image_path;
		}
	     public String  Group_Name()    {
	     return Group_Name;
	    	 
	     }
	     public void set_Group_Name(String grp){
	     this.Group_Name=grp;
	    	 
	     }
	    public int get_Product_Id() {
	        return Product_Id;
	    }
	    public void set_Product_Id(int prd) {
	       this.Product_Id=prd;
	    }
	    public String get_Name() {
	        return Name;
	    }
	    public void set_Name(String name) {
	       this.Name=name;
	    }
	    public int get_Price() {
	        return Price;
	    }
	    public void set_Price(int price) {
	       this.Price=price;
	    }
	    public int get_Qty() {
	        return Qty;
	    }
	    public void set_Qty(int qty) {
	       this.Qty=qty;
	    }
	    public String get_Image_Path() {
	        return Image_path;
	    }
	    public void set_Image_Path(String path) {
	       this.Image_path=path;
	    }
	public String toString()
	{
		return "{"+"Group_Name:"+"\""+ this.Group_Name+"\""+","+"Product_Id:"+this.Product_Id+","+"Name:"+"\""+this.Name+"\""+","+"Price:"+this.Price+","+"Qty:"+this.Qty+","+"Image:"+"\""+this.Image_path+"\""+"}";
	}
	// { Group_Name: "Guitar", Product_Id: "001",Name:"Long Guitar " ,Price:"5000",Qty:"20",Image:"resources/images/image1.jpg" },
}

