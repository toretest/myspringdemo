package no.di.notification.myspringdemo.restendpoint

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/hello")
class HelloEndpoint {
    @GetMapping
    fun hello(): String {
        return "Hello World!"
    }
}
