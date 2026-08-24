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

function mod_anduinos_package_install () {

	local run_cmd="apt-get install -y --install-recommends
		anduinos-desktop
		anduinos-desktop-apps
		anduinos-gnome-extensions
		anduinos-appstore
		anduinos-theme
		anduinos-wallpapers
		anduinos-fonts
		anduinos-no-snapd
		anduinos-session
		anduinos-software-properties-common
		anduinos-software-properties-gtk
		anduinos-system-tweaks
		firefox-anduinos
		gnome-shell-extension-appindicator-anduinos
		gnome-shell-extension-dash-to-panel-anduinos
		gnome-shell-extension-desktop-icons-ng-anduinos
		plymouth-anduinos
		alsa-ucm-conf-anduinos
		firmware-sof-anduinos
	"

	echo ${run_cmd}
	${run_cmd}

}


################################################################################
## Model
################################################################################

function model_do_anduinos_package_install () {

	mod_anduinos_package_install

}


################################################################################
## Portal
################################################################################

function portal_do_anduinos_package_install () {

	model_do_anduinos_package_install

}


################################################################################
## Main
################################################################################

echo "################################################################################"
echo "## [Sub] run: ${0} "
echo "################################################################################"

echo "==== args:" ${@} "===="

function __main__ () {

	portal_do_anduinos_package_install "${@}"

}

__main__ "${@}"


################################################################################
## Test
################################################################################

function __test__ () {

	echo "__test__"

}

##__test__
