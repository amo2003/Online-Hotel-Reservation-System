package Payment;

public class paymentModel {
	private int id;
	private String fullName;
	private String email;
	private String cardNumber;
	private String expDate;
	private String cvv;
	private String amount;
	
	public paymentModel(int id, String fullName, String email, String cardNumber, String expDate, String cvv,
			String amount) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.cardNumber = cardNumber;
		this.expDate = expDate;
		this.cvv = cvv;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	

}
