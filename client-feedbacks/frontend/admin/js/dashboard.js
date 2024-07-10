const selectDataForm = document.querySelector('.select-data-form')
const specialty = document.querySelector('.button-specialty')
const professional = document.querySelector('.button-professional')
const conProfessional = document.querySelector('.button-con-professioanl')
const wrapper = document.querySelector('.select-data-wrapper')
const editData = document.querySelector('.edit-data ul')
const table = document.getElementById('contaner-edit')
const createNewItemButton = document.getElementById('create-new-item')

selectDataForm.addEventListener('submit', event => {
  event.preventDefault()
  wrapper.classList.add('disabled')
})

specialty.addEventListener('click', async () => {
  let html = `
    <thead>
      <tr>
        <th>Especialidade</th>
        <th>Editar</th>
        <th>Apagar</th>
      </tr>
    </thead>
  `
  const response = await readSpecialty()
  console.log(response)
  generateGenericHTML(response, html)
  // createNewItemButton.onclick = openSpecialtyDialog
})

professional.addEventListener('click', async () => {
  let html = `
    <thead>
      <tr>
        <th>Profissional</th>
        <th>Editar</th>
        <th>Apagar</th>
      </tr>
    </thead>
  `
  const response = await readProfissional()
  // console.log(response)
  generateGenericHTML(response, html)
  // createNewItemButton.onclick = openSpecialtyDialog
})


function generateGenericHTML(response, html) {
  const tbody = document.createElement('tbody')
  
  table.innerHTML = html
  table.appendChild(tbody)
  console.log(response)

  response.map((_, index, array) => {
    console.log(index)
    const tr = document.createElement('tr')
    const td = document.createElement('td')
    const tdEdit = document.createElement('td')
    const tdDelete = document.createElement('td')
    const buttonEdit = document.createElement('button')
    const buttonDelete = document.createElement('button')
    const img1 = document.createElement('img')
    const img2 = document.createElement('img')

    const name = document.createTextNode(`${array[index][1]}`)

    img1.src = 'img/edit.png'
    img2.src = 'img/delete.png'

    buttonEdit.classList.add('button')
    buttonDelete.classList.add('button')

    td.classList.add('center')
    buttonEdit.classList.add('center')
    buttonDelete.classList.add('center')

    buttonEdit.style.display="flex"
    buttonEdit.style.justifyContent="center"

    buttonDelete.style.display="flex"
    buttonDelete.style.justifyContent="center"


    tr.appendChild(td)
    tr.appendChild(tdEdit)
    tr.appendChild(tdDelete)
    td.appendChild(name)

    buttonEdit.appendChild(img1)
    buttonDelete.appendChild(img2)
    
    tdEdit.appendChild(buttonEdit)
    tdDelete.appendChild(buttonDelete)

    tbody.appendChild(tr)
  })
}

function openSpecialtyDialog() {
  openDialog('full-center')
  document.getElementById('create-item').onclick = createSpecialty

}

function createSpecialty() {

}