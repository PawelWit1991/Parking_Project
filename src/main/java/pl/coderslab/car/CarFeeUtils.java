package pl.coderslab.car;

import java.time.LocalDate;
import java.time.Month;

public class CarFeeUtils {
    public static void main(String[] args) {
        calculateFee();
    }

    public static void calculateFee() {

        long rentDays = 5;
        Boolean rentInactive = false;

        LocalDate startFeeDate = LocalDate.of(2019, Month.MAY, 1);
        LocalDate startFeeDatePlusDays = startFeeDate.plusDays(rentDays);
//        LocalDate endFeeDate = LocalDate.of(2019, Month.MAY, 5);

        LocalDate now = LocalDate.now();

        LocalDate nowMinusRentDays = now.minusDays(rentDays);
        System.out.println(nowMinusRentDays);


        if (startFeeDatePlusDays.isAfter(nowMinusRentDays)) {
            rentInactive = true;
        }


        System.out.println("rentInactive : " + rentInactive);
    }
}
