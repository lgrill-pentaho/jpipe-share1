#!/usr/bin/env groovy
import org.dog.*

def call(String name = 'Bernie') {
  echo "Hello dog, ${name}."
  def b = new Breed()
  println "And...${b.getBreed(name)}"
}