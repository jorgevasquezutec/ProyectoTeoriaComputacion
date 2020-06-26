cmake_minimum_required(VERSION 3.15)
project(proyectoTeoriaComputacion)

file(GLOB SOURCE
        "src/*"
        )

add_executable(proyectoTeoriaComputacion ${SOURCE})