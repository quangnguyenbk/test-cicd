package com.example.testCICD;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CICDConstroller {

    @GetMapping("/test")
    public ResponseEntity test(){
        ResponseEntity responseEntity = new ResponseEntity("1234567", HttpStatus.OK);
        return responseEntity;
    }

}
