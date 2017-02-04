#-------------------------------------------------
#
# Project created by QtCreator 2016-02-06T19:08:45
#
#-------------------------------------------------

QT       += core gui widgets svg

TARGET = Guitar
TEMPLATE = app

CONFIG += c++11

unix:QMAKE_CXXFLAGS += -Werror=return-type -Werror=trigraphs -Wno-switch

linux:QTPLUGIN += ibusplatforminputcontextplugin

INCLUDEPATH += $$PWD/src


# lbigit2

#INCLUDEPATH += $$PWD/../libgit2/include

#win32:Debug:LIBS += $$PWD/../_build_libgit2/debug/libgit2.lib
#win32:Release:LIBS += $$PWD/../_build_libgit2/release/libgit2.lib

#unix:debug:LIBS += $$PWD/../_build_libgit2_Debug/liblibgit2.a
#unix:release:LIBS += $$PWD/../_build_libgit2_Release/liblibgit2.a


# zlib

win32:Debug:LIBS += $$PWD/../_build_zlib/debug/libz.lib
win32:Release:LIBS += $$PWD/../_build_zlib/release/libz.lib

unix:debug:LIBS += $$PWD/../_build_zlib_Debug/libz.a
unix:release:LIBS += $$PWD/../_build_zlib_Release/libz.a

#unix:LIBS += -lz


win32 {
	LIBS += advapi32.lib
	RC_FILE = win.rc
	QMAKE_SUBSYSTEM_SUFFIX=,5.01
}

macx {
	QMAKE_INFO_PLIST = Info.plist
	ICON += Guitar.icns
	t.path=Contents/Resources
	QMAKE_BUNDLE_DATA += t
}

unix {
    LIBS += -lz
}

SOURCES += \
	version.c \
	src/main.cpp\
	src/MainWindow.cpp \
	src/Git.cpp \
	src/joinpath.cpp \
	src/misc.cpp \
	src/PushDialog.cpp \
	src/ConfigCredentialHelperDialog.cpp \
	src/MySettings.cpp \
	src/FileDiffWidget.cpp \
	src/TextEditDialog.cpp \
	src/LogTableWidget.cpp \
    src/FileDiffSliderWidget.cpp \
    src/LibGit2.cpp \
    src/FileUtil.cpp \
    src/SettingsDialog.cpp \
    src/NewBranchDialog.cpp \
    src/CheckoutBranchDialog.cpp \
    src/MergeBranchDialog.cpp \
    src/CloneDialog.cpp \
    src/AboutDialog.cpp \
    src/RepositoryInfoFrame.cpp \
    src/RepositoryPropertyDialog.cpp \
    src/RepositoryData.cpp \
    src/MyToolButton.cpp \
    src/GitDiff.cpp \
    src/CommitPropertyDialog.cpp \
    src/Terminal.cpp \
    src/EditTagDialog.cpp \
    src/DeleteTagsDialog.cpp \
    src/LegacyWindowsStyleTreeControl.cpp \
    src/RepositoriesTreeWidget.cpp \
    src/SelectCommandDialog.cpp \
    src/FilePreviewWidget.cpp \
    src/FileHistoryWindow.cpp \
    src/Debug.cpp \
    src/GitPackIdxV2.cpp \
    src/GitPack.cpp \
    src/GitObjectManager.cpp \
    src/FilePropertyDialog.cpp \
    src/BigDiffWindow.cpp

HEADERS  += \
	src/MainWindow.h \
	src/Git.h \
	src/joinpath.h \
	src/misc.h \
	src/PushDialog.h \
	src/ConfigCredentialHelperDialog.h \
	src/MySettings.h \
	src/main.h \
	src/FileDiffWidget.h \
	src/TextEditDialog.h \
	src/LogTableWidget.h \
    src/FileDiffSliderWidget.h \
    src/LibGit2.h \
    src/FileUtil.h \
    src/SettingsDialog.h \
    src/NewBranchDialog.h \
    src/CheckoutBranchDialog.h \
    src/MergeBranchDialog.h \
    src/CloneDialog.h \
    src/AboutDialog.h \
    src/RepositoryInfoFrame.h \
    src/RepositoryPropertyDialog.h \
    src/RepositoryData.h \
    src/MyToolButton.h \
    src/GitDiff.h \
    src/CommitPropertyDialog.h \
    src/Terminal.h \
    src/EditTagDialog.h \
    src/DeleteTagsDialog.h \
    src/LegacyWindowsStyleTreeControl.h \
    src/RepositoriesTreeWidget.h \
    src/SelectCommandDialog.h \
    src/FilePreviewWidget.h \
    src/FileHistoryWindow.h \
    src/Debug.h \
    src/GitPackIdxV2.h \
    src/GitPack.h \
    src/GitObjectManager.h \
    src/FilePropertyDialog.h \
    zlib.h \
    src/BigDiffWindow.h

FORMS    += \
	src/MainWindow.ui \
	src/PushDialog.ui \
	src/ConfigCredentialHelperDialog.ui \
	src/TextEditDialog.ui \
    src/SettingsDialog.ui \
    src/NewBranchDialog.ui \
    src/CheckoutBranchDialog.ui \
    src/MergeBranchDialog.ui \
    src/CloneDialog.ui \
    src/AboutDialog.ui \
    src/RepositoryPropertyDialog.ui \
    src/CommitPropertyDialog.ui \
    src/EditTagDialog.ui \
    src/DeleteTagsDialog.ui \
    src/SelectCommandDialog.ui \
	src/FileDiffWidget.ui \
    src/FileHistoryWindow.ui \
    src/FilePropertyDialog.ui \
    src/BigDiffWindow.ui

RESOURCES += \
    resources.qrc



win32 {
	SOURCES += \
		src/win32/thread.cpp \
		src/win32/event.cpp \
		src/win32/win32.cpp

	HEADERS  += \
		src/win32/thread.h \
		src/win32/event.h \
		src/win32/mutex.h \
		src/win32/win32.h
}
