package com.example.film2.Repository

import com.example.film2.model.Film
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface FilmRepository : JpaRepository<Film, Long>