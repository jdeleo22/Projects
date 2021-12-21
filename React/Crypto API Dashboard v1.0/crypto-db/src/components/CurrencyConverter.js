import ExchangeRate from "./ExchangeRate";
import {useState} from 'react';
import axios from "axios";

function CurrencyConverter() {

    const currencies = ['BTC', 'ETH', 'USD', 'XRP', 'LTC', 'ADA']
    const [chosenPrimary, setChosenPrimary] = useState('BTC')
    const [chosenSecondary, setChosenSecondary] = useState('BTC')
    const [amount, setAmount] = useState(1)
    const [result, setResult] = useState(0)
    const [exchangedData, setExchangedData] = useState({
        primaryCurrency: 'BTC',
        secondaryCurrency: 'BTC',
        exchangeRate: 0
    })
    

    function handlePrimaryChange(e){
        setChosenPrimary(e.target.value)
    }

    function handleSecondaryChange(e){
        setChosenSecondary(e.target.value)
    }

    function handleAmountPrimary(e){
        setAmount(e.target.value)
    }

    function convert(){

    const options = {
     method: 'GET',
     url: 'https://alpha-vantage.p.rapidapi.com/query',
     params: {from_currency: chosenPrimary, function: 'CURRENCY_EXCHANGE_RATE', to_currency: chosenSecondary},
     headers: {
     'x-rapidapi-host': 'alpha-vantage.p.rapidapi.com',
     'x-rapidapi-key': process.env.REACT_APP_RAPID_API_KEY
  }
};

axios.request(options).then((response) => {
	console.log(response.data['Realtime Currency Exchange Rate']['5. Exchange Rate']);
    // setexchange(response.data['Realtime Currency Exchange Rate']['5. Exchange Rate'])
    setResult(response.data['Realtime Currency Exchange Rate']['5. Exchange Rate'] * amount)
    // setPrimaryCurrencyExchanged(chosenPrimary)
    // setSecondaryCurrencyExchanged(chosenSecondary)
    setExchangedData({
        primaryCurrency: chosenPrimary,
        secondaryCurrency: chosenSecondary,
        exchangeRate: response.data['Realtime Currency Exchange Rate']['5. Exchange Rate']
    })
}).catch((error) => {
	console.error(error);
    alert(error)
});
    }


    return (
      <div className="currency-converter">
      <h2>Currency Converter</h2>

        <div className="input-box">
         <table>
          <tbody>
           <tr>
            <td>Primary Currency:</td>
            <td>
            <input type="number" 
            name="primary-currency" 
            value={amount}
            onChange={handleAmountPrimary} />
            </td>
            <td>
                <select value={chosenPrimary} 
                name="currency-op1" 
                className="currency-options"
                onChange={handlePrimaryChange}>
                 {currencies.map((currency, index) => (<option key={index}>{currency}</option>))}
                </select>
            </td>
           </tr>
           <tr>
            <td>Secondary Currency:</td>
            <td>
            <input type="number" name="secondary-currency" value={result} disabled={true} />
            </td>
            <td>
                <select value={chosenSecondary} 
                name="currency-op2" 
                className="currency-options"
                onChange={handleSecondaryChange}>
                {currencies.map((currency, index) => (<option key={index}>{currency}</option>))}
                </select>
            </td>
           </tr>
          </tbody>
       </table>

       <button className="convert-button" onClick={convert}>Convert</button>
      </div>
      

      <ExchangeRate exchangedData={exchangedData} />
      </div>
    );
  }
  
  export default CurrencyConverter;