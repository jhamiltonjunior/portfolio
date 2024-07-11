const feedbackContainer = document.getElementById('feedback-clients')

window.addEventListener("load", async () => {
  const assessments = await readAllAssessments(0)
  
  viewAssessments(assessments)
});

async function viewNextAssessments(el) {
  const preButton = document.getElementById("pre-button")

  const assessments = await readAllAssessments(el.value)

  viewAssessments(assessments)

  preButton.disabled = false
  preButton.value = Number(preButton.value) + 10
  el.value = 10 + Number(el.value)
}

async function viewPreAssessments(el) {
  const nextButton = document.getElementById("next-button")
  const assessments = await readAllAssessments(el.value)

  viewAssessments(assessments)

  nextButton.value = Number(nextButton.value) - 10
  el.value = Number(el.value) - 10
}

function existAssessments() {
  // const assessments = await readAllAssessments(el.value)
}

function viewAssessments(assessments) {
  let htmlAssessments = ''
  assessments.forEach((assessment) => {
    const formatedDate = new Date(assessment.created_feedback).toLocaleDateString()
    const feedback = assessment.feedback.length > 30 ? assessment.feedback.slice(0, 30) + '...' : assessment.feedback
    const average = getAverage([
      assessment.infrastructure,
      assessment.service,
      assessment.punctuality,
      assessment.frontDesk,
      assessment.average
    ])

    htmlAssessments += `
      <div class="inline_feedback rounded-md px-2 py-4 w-full shadow-md cursor-pointer flex justify-between">
        <div>
          <h1>${assessment.patient_name}</h1>
          <small>${formatedDate}</small>
        </div>
        <div>
          <p>${feedback}</p>
          <small>Média - ${average}</small>
        </div>
      </div>
      `
  })
  console.log(assessments)

  feedbackContainer.innerHTML = htmlAssessments
}

/**
  @param numbers array of numbers
  @return number
*/
function getAverage(numbers) {
  return (numbers.reduce((preNumber, curNumber) => Number(preNumber) + Number(curNumber), 0))  / numbers.length
}

function toggleSidebar() {
  const sidebar = document.getElementById('sidebar')
  const menuItem = document.getElementById('menu-item')

  if (!sidebar.classList.contains('open')) {
    sidebar.classList.add('open')
    sidebar.style.transform = "translateX(0)"
    menuItem.style.transform = "translateX(251px)"
    return
  } 

  sidebar.classList.remove('open')
  sidebar.style.transform = "translateX(-100%)"
  menuItem.style.transform = "translateX(0)"
}