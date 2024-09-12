package com.lushnikova.service;

import com.lushnikova.exeption.DivisionByZeroException;
import com.lushnikova.exeption.NoSolutionException;
import com.lushnikova.model.Formula;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Setter
@Getter
@NoArgsConstructor
public class FormulaService {

    private Formula formula;

    public double getSquareRoot() throws NoSolutionException {
        double digital = Math.pow(formula.getParamB(), 2) - 4 * formula.getParamA() * formula.getParamC();
        if (digital < 0) {
            throw new NoSolutionException();
        }
        return Math.sqrt(digital);
    }
    
    public double getParamX() throws NoSolutionException {
        if(formula.getParamA() == 0){
           throw new DivisionByZeroException();
        }
        double x = ((double) formula.getParamB() + getSquareRoot())/(double) (2 * formula.getParamA());
        return (int) Math.round(x*10.0)/10.0;
    }

}
