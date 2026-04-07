package com.example.ss3.controller;

import com.example.ss3.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @GetMapping
    public String showEmployees(Model model) {
        List<Employee> employees = Arrays.asList(
                new Employee(1, "Nguyen Van A", "Phong Dao tao", 12000),
                new Employee(2, "Tran Thi B", "Phong Dao tao", 9500),
                new Employee(3, "Le Van C", "Phong Dao tao", 15000)
        );

        model.addAttribute("employees", employees);
        return "employee-list";
    }
}
