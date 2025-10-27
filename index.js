exports.notifyOnPullRequestFailure = functions.testLab.testMatrix().onComplete(testMatrix => {
  if (testMatrix.clientInfo.details['testType'] != 'pr') {
    // Not a pull request
    return null;
  }

  if (testMatrix.state == 'FINISHED' && testMatrix.outcomeSummary == 'SUCCESS') {
    // No failure
    return null;
  }

  const link = testMatrix.clientInfo.details['link'];
  let message = `Test Lab validation for pull request ${link} failed. `;

  if (!!testMatrix.resultStorage.resultsUrl) {
    message += `Test results available at ${testMatrix.resultStorage.resultsUrl}. `;
  }

  // Send notification here ...
});