package com.lushnikova.controller;

import com.lushnikova.exeption.DivisionByZeroException;
import com.lushnikova.exeption.NoSolutionException;
import com.lushnikova.model.Formula;
import com.lushnikova.service.FormulaService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;

@Slf4j
@WebServlet("/initServlet")
public class InitServlet extends HttpServlet {

    private final FormulaService formulaService = new FormulaService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String paramA = req.getParameter("paramA");
            String paramB = req.getParameter("paramB");
            String paramC = req.getParameter("paramC");
            String paramY = req.getParameter("paramY");

            if (StringUtils.isNotBlank(paramA) && StringUtils.isNotBlank(paramB) && StringUtils.isNotBlank(paramC) && StringUtils.isNotBlank(paramY)) {
                int paramAInt = Integer.parseInt(paramA);
                int paramBInt = Integer.parseInt(paramB);
                int paramCInt = Integer.parseInt(paramC);
                double paramYDouble = Double.parseDouble(paramY);

                if (paramAInt != 0) {
                    formulaService.setFormula(Formula.builder()
                            .paramA(paramAInt)
                            .paramB(paramBInt)
                            .paramC(paramCInt)
                            .build());

                    double paramX = formulaService.getParamX();

                    req.setAttribute("formula", formulaService.getFormula());
                    req.setAttribute("xFromFormula", paramX);
                    req.setAttribute("squareRootFromFormula", formulaService.getSquareRoot());
                    req.setAttribute("paramY", paramYDouble);

                    int xForCoordinate = getXForCoordinate(paramX);
                    int yForCoordinate = getYForCoordinate(paramYDouble);
                    req.setAttribute("x_for_coordinate", xForCoordinate);
                    req.setAttribute("y_for_coordinate", yForCoordinate);

                    req.setAttribute("x_for_coordinate_text", getXForCoordinateText(xForCoordinate));
                    req.setAttribute("y_for_coordinate_text", getYForCoordinateText(yForCoordinate));

                    getServletContext().getRequestDispatcher("/param.jsp").forward(req, resp);
                } else {
                    getError("Division by zero a = 0", req, resp);
                }

            } else {
                getError("Request parameter is null", req, resp);
            }
        } catch (NoSolutionException e) {
            String error = "In square root < 0";
            log.error(error, e);
            getError(error, req, resp);
        }

    }

    private Integer getXForCoordinate(double paramX) {
        if(paramX > 0) return 400 + 50 * (int) (paramX * 10) / 10;
        else if (paramX < 0) return 400 - 50 * (int) (paramX * 10) / 10;
        return 400;
    }

    private Integer getYForCoordinate(double paramY) {
        if(paramY < 0) return 400 + 50 * (int) (paramY * 10) / 10;
        else if (paramY > 0) return 400 - 50 * (int) (paramY * 10) / 10;
        return 400;
    }
    private Integer getXForCoordinateText(int xForCoordinate) {
        return xForCoordinate + 25;
    }

    private Integer getYForCoordinateText(int yForCoordinate) {
        return yForCoordinate - 15;
    }

    @SneakyThrows
    private void getError(String error, HttpServletRequest req, HttpServletResponse resp) {
        req.setAttribute("error", error);
        getServletContext().getRequestDispatcher("/error.jsp").forward(req, resp);
    }


}
