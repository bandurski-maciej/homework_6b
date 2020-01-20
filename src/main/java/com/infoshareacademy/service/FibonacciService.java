package com.infoshareacademy.service;

import javax.ejb.Stateless;
import java.util.ArrayList;
import java.util.List;

@Stateless
public class FibonacciService {

  public List<Long> calculateFibonacci(Long number) {

    List<Long> list = new ArrayList<>();
    long a = Long.parseLong("0");
    long b = Long.parseLong("1");
    long c;

    long counter = Long.parseLong("1");
    list.add(a);

    while (counter < number) {

      c = a + b;
      a = b;
      b = c;

      list.add(c);
      counter += 1;

    }
    return list;
  }

  public Long calculateFibonacciElement(List<Long> list) {

    return list.stream().reduce((long) 0, Long::sum);
  }
}
