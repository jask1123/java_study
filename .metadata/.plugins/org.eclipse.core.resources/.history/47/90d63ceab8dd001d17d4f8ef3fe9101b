package compoundInterest;

import java.math.BigDecimal;

/**
 * チェック機能
 */
public class InsertValueCheck {
    /**
     * 引数チェック
     *
     * @param args コマンドライン引数
     * @throws Exception エラーメッセージ
     */
    public static void checkedArgsCount(String[] args) throws Exception {
        if (!(args.length == 3)) {
            throw new Exception("[ERROR] 元金 / 金利 / 年数 のみ指定して下さい。");
        }
    }

    /**
     * 元金チェック
     *
     * @param strPrincipal 元金(String型)
     * @return intPrincipal 元金(int型)
     * @throws Exception エラーメッセージ
     */
    public static int checkedPrincipal(String strPrincipal) throws Exception {
        int intPrincipal = Integer.parseInt(strPrincipal);
        if (!(intPrincipal >= 1000 && intPrincipal <= 1000000000)) {
            throw new Exception("[ERROR]元金は1,000円〜10億円までの範囲で指定ください。");
        }
        return intPrincipal;
    }

    /**
     * 金利チェック
     *
     * @param strRate 金利(String型)
     * @return BigDecimal 金利(BigDecimal型)
     * @throws Exception エラーメッセージ
     */
    public static BigDecimal checkedRate(String strRate) throws Exception {
        BigDecimal rate = new BigDecimal(strRate);
        if (rate.compareTo(BigDecimal.ZERO) < 0 || rate.compareTo(BigDecimal.valueOf(20)) > 0) {
            throw new Exception("[ERROR]金利は0〜20%の範囲で指定ください。");
        }
        return rate.divide(BigDecimal.valueOf(100), 2, BigDecimal.ROUND_HALF_UP);
    }

    /**
     * 年数チェック
     *
     * @param strYear 年数
     * @return intYear 年数(int型)
     * @throws Exception
     */
    public static int checkedYear(String strYear) throws Exception {
        int intYear = Integer.parseInt(strYear);
        if (!(intYear > 0 && intYear <= 20)) {
            throw new Exception("[ERROR]年数は1〜20までの範囲で指定ください。");
        }
        return intYear;
    }
}
