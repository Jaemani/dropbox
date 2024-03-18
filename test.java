import java.util.Scanner;

class Test {
    public static void main(String[] args) {
        int syntax = 1;
        Scanner scan = new Scanner(System.in);
        String[] input = scan.nextLine().split(",");
        String fullName = input[0];
        String file = input[1];
        String[] name = fullName.split(" ");
        String output = "Name Length(Korean) : " + name.length + "\n";

        if (input.length != 2) syntax = 0;

        if (syntax==1){
            for (int i=0; i<name.length; i++){
                output += name[i].substring(0,1).toUpperCase();
                if (i<name.length-1) output += ".";
                else output += name[i].substring(1);
            }   
        }   
        if (file.startsWith(" ")){
            if (file.endsWith("ppt")){
                file = file.split("ppt")[0];
                file += "pdf";
            }
        }
        else syntax = 0;
        if (syntax==1) output += " submitted " + file.substring(1,2).toUpperCase() + file.substring(2);

        System.out.println(output);
    }
}