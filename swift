func calculate() {

if let loan = Double(loanField.text!), let interest = Double(interestField.text!), let years = Double(yearsField.text!) {

if years > 1 {

let month = years * 12
let rate = interest / 100 / 12

let z = pow(1 + rate, month)

paymentLabel.text = "$\(loan * rate * z / (z - 1))"

totalLabel.text = "$\(paymentLabel.text!.replacingOccurrences(of: "$", with: "").replacingOccurrences(of: ",", with: "") as NSString).doubleValue * month)"

totalinterestLabel.text = "$\(totalLabel.text!.replacingOccurrences(of: "$", with: "").replacingOccurrences(of: ",", with: "") as NSString).doubleValue - loan"

} else {

let month = years * 12

let rate = interest / 100

paymentLabel.text = "$\(loan * rate)"

totalLabel.text = "$\(paymentLabel.text!.replacingOccurrences(of: "$", with: "").replacingOccurrences(of: ",", with: "") as NSString).doubleValue * month)"

totalinterestLabel.text = "$\(totalLabel.text!.replacingOccurrences(of: "$", with: "").replacingOccurrences(of: ",", with: "") as NSString).doubleValue - loan"

}

}
}
