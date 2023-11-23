package com.example.film2.controller

import com.example.film2.Repository.FilmRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.ui.set
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable

@Controller
class FilmController @Autowired constructor(private val filmRepository: FilmRepository){

    @GetMapping("/films")
    fun index(model: Model): String {
        model["title"] = "Les films"
        model["films"] = filmRepository.findAll()
        println(model)
        return "films/index"
    }

    @GetMapping("/films/{id}")
    fun details(model: Model, @PathVariable id: Long) : String {
        println("coucou")
        println(id)
        //var id = argument.toLong()
        model["title"] = "Article"
        model["film"] = filmRepository.findById(id)
        println(model)
        return "films/details"
    }

}