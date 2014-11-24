public class PrimeNumber {

	public static void main(String[] args) {
		
		int[] primeNumb = new int[25];
		int counter = 0;
		
		for(int i =2; i <= 100; i++){
			
			for(int j = 2; j <= 100; j++){
				
				if(i%j == 0 && i != j){
					//breaks out of the loop since it is not prime 
					break;
				}else if(j == 100){
					primeNumb[counter]= i;
					 //increase the counter in order to move through the array
					counter++;
				}
			}
			
		}
		  //prints out the numbers 
		for(int i =0; i < primeNumb.length; i++){
		
			  //checks if it is the first number that it is printing out in order to open the square bracket
			if(i == 0){
				System.out.print("["+primeNumb[i]+", "); 
			
				
			}else if(i == (primeNumb.length - 1)){
            //checks if it is the last number in order to close the square bracket
				System.out.print(primeNumb[i] + "]");
			}else{
				System.out.print(primeNumb[i] + ", "); 
			}
			
		}

	}

}
