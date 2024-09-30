# DevOps / Site Reliability Engineer - Technical Assessment
Our tech teams are curious, driven, intelligent, pragmatic, collaborative and open-minded and you should be too.
## Testing Goals
We are interested to see how you approach a problem, which involves designing and building an application that's underpinned by good software engineering practises.
We are testing your ability to implement modern automated infrastructure, as well as general knowledge of operations. In your solution you should emphasize readability, security, maintainability and DevOps methodologies.

## The Task
Your task is to design and document the setup needed for a web application, and write the basic code needed to create a CI/CD pipeline that deploys this web application to a load-blanced environment on AWS Fargate / EKS.

You will have approximately 1 week to complete this task and should focus on an MVP but you are free to take this as far as you wish.
## The Solution
You should create the infrastructure you need using Terraform or another Infrastructure as Code tool. You can use any CI/CD system you feel comfortable with (e.g. Jenkins/Circle/etc) with but the team have a preferences for GitHub actions.

Your CI Job should:
- Run when a feature branch is pushed to Github (you should fork this repository to your own Github account).
- Deploy to a target environment when the job is successful.
- The target environment should consist of:
  - A load-balancer accessible via HTTP on port 80.
- The load-balancer should use a round-robin strategy.

**We recommend staying within the free AWS tiers so you don't incur costs as unfortunately these can't be reimbursed**
 ## The Provided Code
 This is a NodeJS application:

- `npm test` runs the application tests
- `npm start` starts the http server

## Evaluation
We take into account 5 areas when evaluating a solution. Each criteria is evaluated from 0 (non-existent) to 5 (excellent) and your final score would be a simple average across all 5 areas. These are:

- Functionality: Performance and structure of solution?
- Good Practices: What are the good coding standard that we should be following?
- Testing: Test to carry out to ensure code is working as expected.
- Maintainability: Ensuring the solution is easy to run and update
- Task definition: What level of details are needed to communicate the steps of the task to other team members? 

## Reviewing your solution
The second round interview we work as whiteboarding session, where we can go through your thoughts and designs for the above test
