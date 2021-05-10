//define variables 
    const logbtn = document.querySelector("#logbtn")
    const addbtn = document.querySelector("#add")
    const editbtn = document.querySelector("#edit")
    const delbtn = document.querySelector("#delete")
    const image = document.querySelector("#profile")
    const addchieve = document.querySelector("#addchieve")
    const usern = document.querySelector("#usern")
    const achul = document.querySelector("#achul")
    const cname = document.querySelector("#cname")
  
    let li = document.createElement("li")

//stand alone functions
  function getuser(){
    fetch('http://localhost:3000/users/1', {method: 'GET'}) 
    .then(db => db.json())
    .then(user => {console.log(user)
    showChar(user)}
    )
   } 

  function getallcharas() {   
    fetch('http://localhost:3000/characters', {method: 'GET'}) 
    .then(db => db.json())
    .then(character => console.log(character))
   } //this works yay!

  function showChar(user) {
    console.log(user)
    let chara = user.characters[0]
    console.log(chara)
    cname.innerText = chara.name
  }
  

  //  function getform() {  
  //     fetch('http://localhost:3000/form.html', {method: 'GET'}) 
  //     .then(db => db.json())
  //     .then(form => console.log(form))
  //  }



//event listeners
  // addach.addEventListener("click", e => {
    // e.preventDefault()
    // let input = e.target[0].value
    // let li = document.createElement('li')
    // li.innerText = input
    // achul.appendChild('li')
    // input.innerText = ''
  // });
    
  // logbtn.addEventListener("click", e =>{
  //   e.preventDefault()
  //   if (db.include?()) {
  //     getuser();
  //   } else {
  //     User.create(name: usern)
  //   } 
  // }) this can wait
    
  addbtn.addEventListener("click", e => {
    window.location="form.html" //yes! view switches
    // addbtn.addEventListener("click", e => {
        //Character.create()

    //   async function addChar(url = 'http://localhost:3000/characters', data = {}) {
    //     method: 'POST',           //post submission to db
    //     mode: 'cors',
    //     headers: {
    //       'Content-Type': 'application/json'
    //     },
    //     redirect: 'follow',
    //     referrerPolicy: 'no-referrer',
    //     body: JSON.stringify(data);
    //   }
    // }
  });

  //editbtn.addEventListener("click", e => {
    //render form.html
    //getchara(); populate form with existing data
    //function editChar(url = 'http://localhost:3000/characters/:id', data = {}) {
      //method: 'POST',           //post submission to db
      //headers: {
        //'Content-Type': 'application/json'
      //},
      //referrerPolicy: 'no-referrer',
      //body: JSON.stringify(data);
  //}

  //delbtn.addEventListener("click", e => {
    // chara = getchara();
      // async function delChar(url = 'http://localhost:3000/characters/:id', data = {}) {
      //method: 'DELETE',           //submit deletion
      //mode: 'cors',
      //headers: {
        //'Content-Type': 'application/json'
      //},
      //redirect: 'follow',
      //referrerPolicy: 'no-referrer',
      //body: JSON.stringify(data);

  //dieroller - on click 
   //not a top priority
    //if id = d#; n = 
    //take input for amount
    // dn x amount
    //clicking = will calculate result
    //interpolate die number to keep it dry
  


//call functions
  getuser();
  // getallcharas();