package compoundInterest;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

/**
 * 複利計算実行
 *
 * @version 1.0
 */
public class CompoundInterestCalcExec {

    public static void main(String[] args) {
        try {
            // 入力チェック(元金 / 金利 / 年数)
            InsertValueCheck.checkedArgsCount(args);
            BigDecimal principal = InsertValueCheck.checkedPrincipal(args[0]);
            BigDecimal rate = InsertValueCheck.checkedRate(args[1]);
            int year = InsertValueCheck.checkedYear(args[2]);

            // 入力値格納 / 計算
            CompoundInterestBean cibean = new CompoundInterestBean(principal, rate, year);
            // 複利計算実行
            ArrayList<CompoundInterestResultBean> resultBeanArray = cibean.compoundInterestCalc();

            // 出力(コンソール)
            Output o = new DispOutput();
            o.outputExec(resultBeanArray);
            // 出力(テキストファイル)
            Output t = new TextOutput();
            t.outputExec(resultBeanArray);

        } catch (IOException e) {
            System.out.println("[Error]テキストファイルが存在しません");
        } catch (NumberFormatException e) {
            System.out.println("[Error]");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
