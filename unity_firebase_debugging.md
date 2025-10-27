# Debugging the Game Build, Install and Run Process

## Introduction

The following is a guide to debugging the compile and build process for Unity games using the Firebase SDK for Unity. It describes how to investigate and solve many of the more common issues you can encounter while configuring and building your game for a new platform or after an update. It is arranged in order of when these errors may occur in the process. Consult them in order and proceed as each is resolved.

In addition to this doc, consult the [Firebase for Unity FAQ](https://firebase.google.com/docs/unity/troubleshooting-faq) for more information.

1. Click the **Build Phases** tab, and then expand the *Run Script* section.

2. In the *Input Files* section, make sure you have the paths for the locations of the following files:

   ```
   ${DWARF_DSYM_FOLDER_PATH}/${DWARF_DSYM_FILE_NAME}
   ```
