package com.infoshareacademy.servlet;

import com.infoshareacademy.freemarker.TemplateProvider;
import com.infoshareacademy.service.FibonacciService;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("")
public class FibonacciCalculatorServlet extends HttpServlet {

  @Inject
  TemplateProvider templateProvider;

  @Inject
  FibonacciService fibonacciService;

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    resp.setContentType("text/html;charset=UTF-8");
    PrintWriter writer = resp.getWriter();
    Map<String, Object> dataModel = new HashMap<>();
    Template template = this.templateProvider.getTemplate(getServletContext(), "fibonacci-form.ftlh");

    try {
      template.process(dataModel, writer);
    } catch (
      TemplateException e) {
      e.getMessage();
    }

  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    resp.setContentType("text/html;charset=UTF-8");
    PrintWriter writer = resp.getWriter();
    Map<String, Object> dataModel = new HashMap<>();
    String resultTemplate;

    if (req.getParameter("number").contains(".") || !req.getParameter("number").matches("[0-9]")) {

      resultTemplate = "fibonacci-wrong-number.ftlh";

    } else if (Integer.parseInt(req.getParameter("number")) < 0) {

      resultTemplate = "fibonacci-wrong-number.ftlh";

    }

    else {
      Long number = Long.valueOf(req.getParameter("number"));
      dataModel.put("fibonacci_list", fibonacciService.calculateFibonacci(number));
      dataModel.put("element", fibonacciService.calculateFibonacciElement(fibonacciService.calculateFibonacci(number)));
      resultTemplate = "fibonacci-result.ftlh";
    }

    Template template = this.templateProvider.getTemplate(getServletContext(), resultTemplate);

    try {
      template.process(dataModel, writer);
    } catch (
      TemplateException e) {
      e.getMessage();
    }

  }

}

