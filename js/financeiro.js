const transactionsUL = document.querySelector('#transactions')
const incomeDisplay = document.querySelector('#money-plus')
const expenseDisplay = document.querySelector('#money-minus')
const balanceDisplay = document.querySelector('#balance')
const form = document.querySelector('#form')
const inputTransactioName = document.querySelector('#text')
const inputTransactioAmount = document.querySelector('#amount')
const inputTransactioCategory = document.querySelector('#category')

//let transactions = [
   // { id:1,name:'Gás', amount: -100 },
  //  { id:2,name:'Conta de agua', amount: -60},
   // { id:3,name: 'PENSAO', amount: 2320 }
//]
const localStorageTransactions = JSON.parse(localStorage.getItem('transactions'))
let transactions = localStorage.getItem('transactions') !== null ? localStorageTransactions : []
const removeTransaction = ID => {
    transactions = transactions.filter(transaction => transaction.id !== ID )
    updateLocalStorage()
    init()
}

const addTransactionIntoDOM = transaction =>{
    const operator = transaction.amount < 0 ? '-':'+'
    const CSSClass = transaction.amount < 0 ? 'minus' :'plus'
    const amountWhithoutOperator = Math.abs(transaction.amount)
    const category = document.getElementById('category');

    const li = document.createElement('li')
    li.classList.add(CSSClass)
    li.innerHTML = `${transaction.name}
    <span>${operator}$ ${amountWhithoutOperator}</span>
    <button class="delete-btn" onClick="removeTransaction(${transaction.id})">x</button>`
    transactionsUL.append(li)
}
const updateBalanceValues = () => {
    const transactionsAmounts = transactions
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
    transactionsUL.innerHTML = ''
    transactions.forEach(addTransactionIntoDOM)
    updateBalanceValues()
}
init()

const updateLocalStorage = () => {
    localStorage.setItem('transactions', JSON.stringify(transactions))
}

const generateID = () => Math.round(Math.random()* 1000)
form.addEventListener('submit', event =>{
    event.preventDefault()
    const transactionName = inputTransactioName.value.trim()
    const transactionAmount = inputTransactioAmount.value.trim()
    const transactionCategory = inputTransactioCategory.value.trim()

    if (transactionName === '' || transactionAmount ==='' || transactionCategory ===''){
   alert('Por favor, insira todos os dados!')
   return
    }
    const transaction = { id: generateID() ,name: transactionName, amount: Number(transactionAmount) }
   transactions.push(transaction)
   init()
   updateLocalStorage()
   inputTransactioName.value=''
   inputTransactioName.value=''

})