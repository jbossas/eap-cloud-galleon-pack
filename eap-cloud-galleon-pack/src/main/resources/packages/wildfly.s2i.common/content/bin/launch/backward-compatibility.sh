
function prepareEnv() {
  unset EAP_ADMIN_USERNAME
  unset EAP_ADMIN_PASSWORD
  unset EAP_NODE_NAME
  unset EAP_HTTPS_NAME
  unset EAP_HTTPS_PASSWORD
  unset EAP_HTTPS_KEYSTORE_DIR
  unset EAP_HTTPS_KEYSTORE
}

function preConfigure() {
  convertEnv
}

function preConfigureEnv() {
  convertEnv
}

function convertEnv() {
  ADMIN_USERNAME=${ADMIN_USERNAME:-${EAP_ADMIN_USERNAME:-$DEFAULT_ADMIN_USERNAME}}
  ADMIN_PASSWORD=${ADMIN_PASSWORD:-$EAP_ADMIN_PASSWORD}
  NODE_NAME=${NODE_NAME:-$EAP_NODE_NAME}
  HTTPS_NAME=${HTTPS_NAME:-$EAP_HTTPS_NAME}
  HTTPS_PASSWORD=${HTTPS_PASSWORD:-$EAP_HTTPS_PASSWORD}
  HTTPS_KEYSTORE_DIR=${HTTPS_KEYSTORE_DIR:-$EAP_HTTPS_KEYSTORE_DIR}
  HTTPS_KEYSTORE=${HTTPS_KEYSTORE:-$EAP_HTTPS_KEYSTORE}
}
