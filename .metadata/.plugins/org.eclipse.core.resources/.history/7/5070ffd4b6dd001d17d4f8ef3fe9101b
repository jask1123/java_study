package compoundInterest;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class TextOutput implements Output {

	@Override
	public void outputExec(ArrayList<CompoundInterestResultBean> resultBeanArray) throws IOException {

    	//ファイルを開く
        PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter("CompoundInterestResult.txt")));

        //最後の複利計算結果データ取得
        CompoundInterestResultBean lastResultBean = resultBeanArray.get(resultBeanArray.size()-1);
		int lastTotalInterest = lastResultBean.getTotalInterest();

      //行単位でデータを出力する
		for(CompoundInterestResultBean result:resultBeanArray) {
			String strTotalInterest =  String.format("%,3d", result.getTotalInterest());
			if(lastTotalInterest == result.getTotalInterest()) {
				pw.println("-------------------------------");
				pw.println(result.getEveryMonth() + "ヶ月目:" + strTotalInterest);
				pw.println("-------------------------------");
			}else {

			}
		}
        //ファイルを閉じる
        pw.close();
	}
}