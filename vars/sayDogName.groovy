#!/usr/bin/env groovy
import org.dog.pony

def call(String name = 'shittyzu') {
  echo "Hello dog, ${name}."
  Pony p = new Pony()
}