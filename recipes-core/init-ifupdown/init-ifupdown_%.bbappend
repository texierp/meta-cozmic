# Customization of init-ifupdown (meta-estei)

# Files directory
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Sources
SRC_URI_append = " \
    file://interfaces \
"
