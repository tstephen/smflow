function recordEnquiry() {
  startProc('RecordEnquiry', [ { "name": "contactEmail", "value": document.getElementById('edit-field-email-0-value').value } ]);
}
function startProc(key,vars) {
  var data = {
      "processDefinitionKey":key,
      "businessKey":"",
      "returnVariables":false,
      "variables":vars 
  };
  fetch('http://localhost:8080/flowable-rest/service/runtime/process-instances', {
    method: 'POST',
    headers: {
      'Authorization': 'Basic '+btoa('rest-admin:test'),
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  })
  .then((response) => response.json())
  .then((data) => {
      console.log('Success:', data);
  })
  .catch((error) => {
    console.error('Error:', error);
  });
}
