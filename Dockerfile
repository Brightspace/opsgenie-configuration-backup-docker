FROM circleci/openjdk:8u181

ADD \
	https://github.com/opsgenie/opsgenie-configuration-backup/releases/download/backup-v0.20.0/OpsGenieExportUtil-0.20.0.jar \
	/opt/opsgenie-configuration-backup/OpsGenieExportUtil.jar

RUN sudo chmod +r /opt/opsgenie-configuration-backup/OpsGenieExportUtil.jar

ADD ./OpsGenieExportUtil /usr/local/bin
