package com.example.film2.model

import jakarta.persistence.*
import java.util.Date

@Entity
@Table(name = "realisateur")
class Realisateur(

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @Column(name = "nom")
    var nom: String,

    @Column(name = "prenom")
    var prenom: String,

    @Column(name = "date_naissance")
    var date_naissance: Date,

    @Column(name="nation")
    var nation: String,

    @OneToMany(mappedBy = "id_realisateur", cascade = [CascadeType.ALL])
    var films: MutableList<Film> = mutableListOf(),


)

