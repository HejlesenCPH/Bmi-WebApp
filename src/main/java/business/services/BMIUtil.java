package business.services;

public class BMIUtil {

    public static Double calcBMI(Double height, Double weight){
        return  weight / ((height / 100) * (height / 100));
    }

    public static String getCategory(Double bmi){
        String category= "";
        if (bmi > 30) {
            category = "Svært overvægtig";

        } else if (bmi < 18.5) {
            category = "Undervægtig";

        } else if (bmi < 25) {
            category = "Normalvægtig";

        } else {
            category = "Overvægtig";
        }
        return category;
    }


}
