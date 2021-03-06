<?xml version='1.0' encoding='UTF-8'?>
<hudson>
  <disabledAdministrativeMonitors>
    <string>hudson.diagnosis.ReverseProxySetupMonitor</string>
  </disabledAdministrativeMonitors>
  <version>2.101</version>
  <installState class="jenkins.install.InstallState$5">
    <isSetupComplete>true</isSetupComplete>
    <name>RESTART</name>
  </installState>
  <numExecutors>0</numExecutors>
  <mode>NORMAL</mode>
  {{ variables.SECURITY_CONFIG }}
  <disableRememberMe>false</disableRememberMe>
  <projectNamingStrategy class="jenkins.model.ProjectNamingStrategy$DefaultProjectNamingStrategy"/>
  <workspaceDir>${JENKINS_HOME}/workspace/${ITEM_FULLNAME}</workspaceDir>
  <buildsDir>${ITEM_ROOTDIR}/builds</buildsDir>
  <systemMessage>Jenkins configuration built from HEAD={{ imports['//:git-hash'] }}</systemMessage>
  <markupFormatter class="hudson.markup.EscapedMarkupFormatter"/>
  <jdks/>
  <viewsTabBar class="hudson.views.DefaultViewsTabBar"/>
  <myViewsTabBar class="hudson.views.DefaultMyViewsTabBar"/>
  <clouds/>
  <quietPeriod>5</quietPeriod>
  <scmCheckoutRetryCount>0</scmCheckoutRetryCount>
  <views>
    <listView>
      <owner class="hudson" reference="../../.."/>
      <name>Projects</name>
      <description>All projects</description>
      <filterExecutors>false</filterExecutors>
      <filterQueue>false</filterQueue>
      <properties class="hudson.model.View$PropertyList"/>
      <jobNames/>
      <jobFilters/>
      <columns>
        <hudson.views.StatusColumn/>
        <hudson.views.WeatherColumn/>
        <hudson.views.JobColumn/>
        <hudson.views.LastSuccessColumn/>
        <hudson.views.LastFailureColumn/>
        <hudson.views.LastDurationColumn/>
        <hudson.views.BuildButtonColumn/>
      </columns>
      <includeRegex>(?!^(bazel|PR|CR|maintenance|Global)$).*</includeRegex>
      <recurse>false</recurse>
      <statusFilter>true</statusFilter>
    </listView>
    <listView>
      <owner class="hudson" reference="../../.."/>
      <name>Bazel bootstrap and maintenance</name>
      <filterExecutors>false</filterExecutors>
      <filterQueue>false</filterQueue>
      <properties class="hudson.model.View$PropertyList"/>
      <jobNames/>
      <jobFilters/>
      <columns>
        <hudson.views.StatusColumn/>
        <hudson.views.WeatherColumn/>
        <hudson.views.JobColumn/>
        <hudson.views.LastSuccessColumn/>
        <hudson.views.LastFailureColumn/>
        <hudson.views.LastDurationColumn/>
        <hudson.views.BuildButtonColumn/>
      </columns>
      <includeRegex>(bazel|PR|CR|maintenance|Global)</includeRegex>
      <recurse>false</recurse>
      <statusFilter>true</statusFilter>
    </listView>
    <com.smartcodeltd.jenkinsci.plugins.buildmonitor.BuildMonitorView plugin="build-monitor-plugin@1.12+build.201708172343">
      <owner class="hudson" reference="../../.."/>
      <name>Dashboard</name>
      <filterExecutors>false</filterExecutors>
      <filterQueue>false</filterQueue>
      <properties class="hudson.model.View$PropertyList"/>
      <jobNames/>
      <jobFilters/>
      <columns/>
      <includeRegex>(bazel/nightly|bazel/release|(?!.*/).*)</includeRegex>
      <recurse>true</recurse>
      <statusFilter>true</statusFilter>
      <title>Bazel Tests</title>
      <config>
        <displayCommitters>false</displayCommitters>
        <order class="com.smartcodeltd.jenkinsci.plugins.buildmonitor.order.ByStatus"/>
      </config>
    </com.smartcodeltd.jenkinsci.plugins.buildmonitor.BuildMonitorView>
    <com.smartcodeltd.jenkinsci.plugins.buildmonitor.BuildMonitorView>
      <owner class="hudson" reference="../../.."/>
      <name>Global Dashboard</name>
      <filterExecutors>false</filterExecutors>
      <filterQueue>false</filterQueue>
      <properties class="hudson.model.View$PropertyList"/>
      <jobNames/>
      <jobFilters/>
      <columns/>
      <title>Global Dashboard</title>
      <config>
        <displayCommitters>false</displayCommitters>
        <order class="com.smartcodeltd.jenkinsci.plugins.buildmonitor.order.ByStatus"/>
      </config>
      <includeRegex>Global/.*</includeRegex>
      <recurse>true</recurse>
      <statusFilter>true</statusFilter>
    </com.smartcodeltd.jenkinsci.plugins.buildmonitor.BuildMonitorView>
  </views>
  <primaryView>Projects</primaryView>
  <slaveAgentPort>50000</slaveAgentPort>
  <disabledAgentProtocols>
    <string>JNLP-connect</string>
    <string>JNLP2-connect</string>
  </disabledAgentProtocols>
  <label></label>
  <nodeProperties/>
  <globalNodeProperties/>
</hudson>
