TEMPLATE = subdirs

ROOT_DIR=$$PWD/..
DEPLOY_DIR=$$PWD/deploy
CORE_ROOT_DIR=$$ROOT_DIR/core

include($$PWD/common.pri)

CONFIG += ordered

addSubProject(cryptopp,		$$CORE_ROOT_DIR/Common/3dParty/cryptopp/project/cryptopp.pro)
addSubProject(kernel,		$$CORE_ROOT_DIR/Common/kernel.pro,\
				cryptopp)
addSubProject(unicodeconverter,	$$CORE_ROOT_DIR/UnicodeConverter/UnicodeConverter.pro,\
				kernel)
addSubProject(graphics,		$$CORE_ROOT_DIR/DesktopEditor/graphics/pro/graphics.pro,\
				kernel unicodeconverter)
!no_use_common_binary {
	addSubProject(allfontsgen,	$$CORE_ROOT_DIR/DesktopEditor/AllFontsGen/AllFontsGen.pro,\
					kernel unicodeconverter graphics)
}