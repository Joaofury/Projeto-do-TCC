const dummyTransactions = [
    { id:1,name:'bolo', amount:-20 },
    { id:2,name:'salario', amount:+20 },
    { id:3,name:'cake', amount:-20 },
    { id:4,name:'cu', amount:-20 }
]
const addTransactionIntoDOM = transaction =>{
    const operator = transaction.amount < 0 ? '-':'+'
    console.log(operator)
   /*<li class="minus">
          Salário <span>-$400</span><button class="delete-btn">x</button>
        </li>
}
*/
}
addTransactionIntoDOM(dummyTransactions[0])
