package com.example.film2.model

import jakarta.persistence.*
import java.util.Date

@Entity
@Table(name = "film")
class Film(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @Column(name = "titre")
    var titre: String,

    @Column(name = "genre")
    var genre: String,

    @Column(name = "date_sortie")
    var date_sortie: Date,

    @Column(name="recettes")
    var recettes: String,

    @ManyToOne var id_realisateur: Realisateur,


)