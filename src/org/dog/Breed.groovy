package org.dog

public class Breed {

  def nameBreedMap = [Freddy:'Teddy Bear', Bernie:'Muttpoo', Irwin:'Shitzu']
  public def getBreed(def name) {

    return nameBreedMap.get(name)
  }
}