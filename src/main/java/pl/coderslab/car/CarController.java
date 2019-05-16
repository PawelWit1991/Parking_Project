package pl.coderslab.car;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.client.Client;
import pl.coderslab.client.ClientService;


import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/cars")
public class CarController {

    @Autowired
    private CarService carService;
    @Autowired
    private ClientService clientService;
    @Autowired
    private CarRepository carRepository;

    @GetMapping("/add")
    public String add(Model model) {
        Car car = new Car();
        model.addAttribute("car", car);
        return "cars/add";
    }


    //bez walidacji
//    @PostMapping("/add")
//    @ResponseBody
//
//    public String addedCar(Model model,@RequestParam String brand, @RequestParam String modelCar ){
//
//Car car=new Car(brand,modelCar);
//model.addAttribute("car",car);
//carService.save(car);
//
//
//return "cars/komunikatDodania";
//
//    }

    /*@ModelAttribute("cars")
    public List<Car> getCars() {
        return carService.getAllCars();
    }*/


    @ModelAttribute("clients")
    public List<Client> getClients() {
        return clientService.getAllClients();
    }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String processRegistration(@Valid Car car, BindingResult result) {
        if (result.hasErrors()) {
            return "cars/add";
        }
        carService.save(car);
        return "redirect:/cars/all";
    }

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("cars", carService.getAllCars());
        return "cars/all";
    }

    @RequestMapping("/delete/{id}")
    @ResponseBody
    public String delete(@PathVariable Long id) {
        carService.delete(id);
        return "redirect:/cars/all";
    }

    @RequestMapping("/edit/{id}")

    public String editCar(@PathVariable Long id, Model model) {
        Car car = carService.find(id);
        model.addAttribute("car", car);
        carService.update(car);
        return "cars/edit";
    }

    @PostMapping("/edit/{id}")       // w ten sposob odbieram edytowana clienta z widoku edit.jsp

    public String editedCar(@Valid Car car) {

        carService.update(car);

        return "redirect:/cars/all";
    }

    @RequestMapping("/findByClientId/{id}")

    public String findByClientId(@PathVariable Long id, Model model) {

        model.addAttribute("carsOfClient", carService.findCarByClientId(id));

        return "cars/allCarsOfClient";


    }


}
