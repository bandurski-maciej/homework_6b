package com.infoshareacademy.service;

import javax.ejb.Stateless;
import java.util.ArrayList;
import java.util.List;

@Stateless
public class FibonacciService {

  public List<Long> calculateFibonacci(Long number) {

    List<Long> list = new ArrayList<>();
    Long a = Long.valueOf("0");
    Long b = Long.valueOf("1");
    Long c;

    Long counter = Long.valueOf("1");
    list.add(a);

    while (counter < number) {

      c = a + b;
      list.add(c);
      a = b;
      b = c;

      counter += 1;

    }

    return list;
  }

}
