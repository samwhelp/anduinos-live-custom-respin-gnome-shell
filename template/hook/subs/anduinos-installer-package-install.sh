#!/usr/bin/env bash


################################################################################
## Environment
################################################################################

set -e						# exit on error
set -o pipefail				# exit on pipeline error
set -u						# treat unset variable as error


################################################################################
## Base Path
################################################################################

BASE_DIR_PATH="$(dirname "$(realpath "${0}")")"


################################################################################
## Init
################################################################################



################################################################################
## Option
################################################################################




################################################################################
## Util
################################################################################




################################################################################
## Module
################################################################################

function mod_anduinos_installer_package_install () {

	local run_cmd="apt-get install -y --no-install-recommends
		anduinos-installer-beta
	"

	echo ${run_cmd}
	${run_cmd}

}

function mod_anduinos_snapshots_package_install () {

	local run_cmd="apt-get install -y --no-install-recommends
		anduinos-btrfs-snapshots-manager
	"

	echo ${run_cmd}
	${run_cmd}

}

function mod_anduinos_vm_package_install () {

	local run_cmd="apt-get install -y --install-recommends
		open-vm-tools-desktop
	"

	echo ${run_cmd}
	${run_cmd}

}


################################################################################
## Model
################################################################################

function model_do_anduinos_installer_package_install () {

	mod_anduinos_installer_package_install
	mod_anduinos_snapshots_package_install
	mod_anduinos_vm_package_install

}


################################################################################
## Portal
################################################################################

function portal_do_anduinos_installer_package_install () {

	model_do_anduinos_installer_package_install

}


################################################################################
## Main
################################################################################

echo "################################################################################"
echo "## [Sub] run: ${0} "
echo "################################################################################"

echo "==== args:" ${@} "===="

function __main__ () {

	portal_do_anduinos_installer_package_install "${@}"

}

__main__ "${@}"


################################################################################
## Test
################################################################################

function __test__ () {

	echo "__test__"

}

##__test__
