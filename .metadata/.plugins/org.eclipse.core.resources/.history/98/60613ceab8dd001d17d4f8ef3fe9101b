package compoundInterest;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;

/**
 * Compound interest calculator.
 */
public class CompoundInterestBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private BigDecimal principal;
    private BigDecimal rate;
    private int year;

    public CompoundInterestBean(BigDecimal principal, BigDecimal rate, int year) {
        this.principal = principal;
        this.rate = rate;
        this.year = year;
    }

    public ArrayList<CompoundInterestResultBean> compoundInterestCalc() {
        ArrayList<CompoundInterestResultBean> resultBeanArray = new ArrayList<>();
        int targetMonth = this.year * 12;
        BigDecimal totalInterest = this.principal;
        for (int tmpMonth = 0; tmpMonth <= targetMonth; tmpMonth++) {
            CompoundInterestResultBean resultBean = new CompoundInterestResultBean();
            resultBean.setEveryMonth(tmpMonth);
            resultBean.setTotalInterest(totalInterest);
            resultBeanArray.add(resultBean);

            totalInterest = totalInterest.multiply(this.rate.add(BigDecimal.ONE).divide(BigDecimal.valueOf(12), 8, BigDecimal.ROUND_HALF_UP));
        }
        return resultBeanArray;
    }
}
