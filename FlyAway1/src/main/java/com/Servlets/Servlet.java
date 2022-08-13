package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.businesslogic.Search;


public class Servlet extends HttpServlet {

    @Override
    public void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("person"));

        if (Search.date.equals("")) {
            PrintWriter out = resp.getWriter();
            out.println("Please enter a valid date");
        }
        else {
            Search.day = getDay(Search.date);
            resp.sendRedirect("SearchResult.jsp");
        }
    }

    public String getDay(String dateInp) {
        LocalDate dt = LocalDate.parse(dateInp);
        return dt.getDayOfWeek().toString();
    }

}

