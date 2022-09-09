FROM jenkins/jenkins:lts-jdk11

# Distributed Builds plugins
RUN jenkins-plugin-cli --plugins ssh-slaves

#Install GIT
RUN jenkins-plugin-cli --plugins git

# Artifacts
RUN jenkins-plugin-cli --plugins htmlpublisher

# UI
RUN jenkins-plugin-cli --plugins greenballs
RUN jenkins-plugin-cli --plugins simple-theme-plugin
RUN jenkins-plugin-cli --plugins docker-plugin
RUN jenkins-plugin-cli --plugins azure-credentials
RUN jenkins-plugin-cli --plugins maven-plugin:3.19
RUN jenkins-plugin-cli --plugins kubernetes-cli
RUN jenkins-plugin-cli --plugins sonar
RUN jenkins-plugin-cli --plugins cloudbees-folder
RUN jenkins-plugin-cli --plugins antisamy-markup-formatter
RUN jenkins-plugin-cli --plugins structs
RUN jenkins-plugin-cli --plugins workflow-step-api
RUN jenkins-plugin-cli --plugins token-macro
RUN jenkins-plugin-cli --plugins build-timeout
RUN jenkins-plugin-cli --plugins credentials
RUN jenkins-plugin-cli --plugins trilead-api
RUN jenkins-plugin-cli --plugins ssh-credentials
RUN jenkins-plugin-cli --plugins plain-credentials
RUN jenkins-plugin-cli --plugins credentials-binding
RUN jenkins-plugin-cli --plugins scm-api
RUN jenkins-plugin-cli --plugins workflow-api
RUN jenkins-plugin-cli --plugins timestamper
RUN jenkins-plugin-cli --plugins script-security
RUN jenkins-plugin-cli --plugins junit
RUN jenkins-plugin-cli --plugins matrix-project
RUN jenkins-plugin-cli --plugins resource-disposer
RUN jenkins-plugin-cli --plugins ws-cleanup
RUN jenkins-plugin-cli --plugins ant
RUN jenkins-plugin-cli --plugins workflow-support
RUN jenkins-plugin-cli --plugins durable-task
RUN jenkins-plugin-cli --plugins workflow-durable-task-step
RUN jenkins-plugin-cli --plugins workflow-scm-step
RUN jenkins-plugin-cli --plugins workflow-cps
RUN jenkins-plugin-cli --plugins workflow-job
RUN jenkins-plugin-cli --plugins display-url-api
RUN jenkins-plugin-cli --plugins mailer
RUN jenkins-plugin-cli --plugins workflow-basic-steps
RUN jenkins-plugin-cli --plugins gradle
RUN jenkins-plugin-cli --plugins pipeline-milestone-step
RUN jenkins-plugin-cli --plugins snakeyaml-api
RUN jenkins-plugin-cli --plugins jackson2-api
RUN jenkins-plugin-cli --plugins pipeline-input-step
RUN jenkins-plugin-cli --plugins pipeline-stage-step
RUN jenkins-plugin-cli --plugins pipeline-graph-analysis
RUN jenkins-plugin-cli --plugins pipeline-rest-api
RUN jenkins-plugin-cli --plugins pipeline-stage-view
RUN jenkins-plugin-cli --plugins pipeline-build-step
RUN jenkins-plugin-cli --plugins pipeline-model-api
RUN jenkins-plugin-cli --plugins pipeline-model-extensions
RUN jenkins-plugin-cli --plugins jsch
RUN jenkins-plugin-cli --plugins git-client
RUN jenkins-plugin-cli --plugins git-server
RUN jenkins-plugin-cli --plugins workflow-cps-global-lib-http
RUN jenkins-plugin-cli --plugins branch-api
RUN jenkins-plugin-cli --plugins workflow-multibranch
RUN jenkins-plugin-cli --plugins pipeline-stage-tags-metadata
RUN jenkins-plugin-cli --plugins pipeline-model-definition
RUN jenkins-plugin-cli --plugins lockable-resources
RUN jenkins-plugin-cli --plugins okhttp-api
RUN jenkins-plugin-cli --plugins github-api
RUN jenkins-plugin-cli --plugins github
RUN jenkins-plugin-cli --plugins github-branch-source
RUN jenkins-plugin-cli --plugins pipeline-github-lib
RUN jenkins-plugin-cli --plugins subversion
RUN jenkins-plugin-cli --plugins matrix-auth
RUN jenkins-plugin-cli --plugins pam-auth
RUN jenkins-plugin-cli --plugins email-ext
RUN jenkins-plugin-cli --plugins ldap
RUN jenkins-plugin-cli --plugins blueocean

# Scaling
RUN jenkins-plugin-cli --plugins kubernetes

VOLUME /var/jenkins_home

USER jenkins
