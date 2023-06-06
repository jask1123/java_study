package compoundInterest;

import java.io.Serializable;

public class CompoundInterestResultBean implements Serializable {

	 private static final long serialVersionUID = 1L;

	/**
	 * 経過月
	 */
	private int everyMonth;
	/**
	 * 複利合計(元金+利息)
	 */
	private int totalInterest;

	public int getEveryMonth() {
		return everyMonth;
	}

	public void setEveryMonth(int everyMonth) {
		this.everyMonth = everyMonth;
	}

	public int getTotalInterest() {
		return totalInterest;
	}

	public void setTotalInterest(int totalInterest) {
		this.totalInterest = totalInterest;
	}

}
