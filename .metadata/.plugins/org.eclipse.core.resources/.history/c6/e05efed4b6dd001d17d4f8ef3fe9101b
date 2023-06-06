package compoundInterest;

import java.util.ArrayList;

/**
 * コンソール出力クラス
 * @version 1.0
 * @author yamamoto
 */
public class DispOutput implements Output {

	@Override
	public void outputExec(ArrayList<CompoundInterestResultBean> resultBeanArray) {
		//最後の複利計算結果データ取得
		CompoundInterestResultBean lastResultBean = resultBeanArray.get(resultBeanArray.size()-1);
		int lastTotalInterest = lastResultBean.getTotalInterest();

		//行単位でデータを出力する
		for(CompoundInterestResultBean result:resultBeanArray) {
			String strTotalInterest =  String.format("%,3d", result.getTotalInterest());
			if(lastTotalInterest == result.getTotalInterest()) {
				System.out.println("-------------------------------");
				System.out.println(result.getEveryMonth() + "ヶ月目:" + strTotalInterest);
				System.out.println("-------------------------------");
			}else {
				System.out.println(result.getEveryMonth() + "ヶ月目:" + strTotalInterest);
			}

		}
	}
}
