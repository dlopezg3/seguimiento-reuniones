import { Controller } from "stimulus"

export default class extends Controller {
  // static targets = [ "output" ]

  create() {
    const plannerPlan = {
      owner: "fbfc29ed-dbae-446b-9b97-dad7557df3eb",
      title: "Prueba inicial post planner"
    };

    fetch("https://graph.microsoft.com/v1.0/planner/plans", {
      method: "POST",
      body: plannerPlan
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });
  }
}
