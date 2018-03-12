update_tispark() {
  if [ ! -z "$SPARK_HOME" ] && [ ! -z "$TISPARK_HOME" ]; then
    if [ -d $TISPARK_HOME/core/target ]; then
      cp $TISPARK_HOME/core/target/tispark-core-0.1.0-SNAPSHOT-jar-with-dependencies.jar $SPARK_HOME/jars
    else
      echo "please compile tispark project"
    fi
  else
    echo "please set SPARK_HOME or TISPARK_HOME"
  fi
}
