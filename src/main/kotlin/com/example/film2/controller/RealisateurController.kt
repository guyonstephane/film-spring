package com.example.film2.controller


import com.example.film2.Repository.RealisateurRepository
import org.springframework.web.bind.annotation.*
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.ui.set

@Controller
class PaysController  constructor(private val realisateurRepository: RealisateurRepository){

    @GetMapping("/realisateur")
    fun index(model: Model): String {
        model["title"] = "Les réalisateurs"
        model["realisateurs"] = realisateurRepository.findAll()
        println(model)
        return "realisateur/index"
    }


}