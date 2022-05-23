const transactionsUL = document.querySelector('#transactions')
const incomeDisplay = document.querySelector('#money-plus')
const expenseDisplay = document.querySelector('#money-minus')
const balanceDisplay = document.querySelector('#balance')
const form = document.querySelector('#form')
const dummyTransactions = [
    { id:2,name:'conta de água', amount: -130.20 },
    { id:4,name: '10°3', amount: 1200 }
]
const addTransactionIntoDOM = transaction =>{
    const operator = transaction.amount < 0 ? '-':'+'
    const CSSClass = transaction.amount < 0 ? 'minus' :'plus'
    const amountWhithoutOperator = Math.abs(transaction.amount)
    const li = document.createElement('li')

    li.classList.add(CSSClass)
    li.innerHTML = `${transaction.name} <span>${operator}$ ${amountWhithoutOperator}</span>
    <button class="delete-btn">x</button>`
    transactionsUL.append(li)
}
const updateBalanceValues = () => {
    const transactionsAmounts = dummyTransactions
    .map(transaction => transaction.amount)
    const total = transactionsAmounts
    .reduce((accumulator, transaction) => accumulator + transaction, 0 )
    .toFixed(2)
    const income = transactionsAmounts
    .filter(value => value > 0)
    .reduce((accumulator, value)=>accumulator + value, 0)
    .toFixed(2)
    const expense = Math.abs (transactionsAmounts
    .filter(value => value < 0)
    .reduce((accumulator, value)=> accumulator + value, 0))
    .toFixed(2)
    console.log(income)

    balanceDisplay.textContent = `R$ ${total}`
    incomeDisplay.textContent = `R$ ${income}`
    expenseDisplay.textContent = `R$ ${expense}`

}
const init = () => {
    dummyTransactions.forEach(addTransactionIntoDOM)
    updateBalanceValues()
}
init()
