#-------------------------------------------------
#
# Project created by QtCreator 2013-05-12T10:36:25
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = jpconj
TEMPLATE = app


SOURCES += main.cpp\
        jpconjmain.cpp \
        libjpconjlink.cpp \
    about.cpp \
    edict2.cpp \
    preference.cpp

HEADERS  += jpconjmain.h \
    libjpconjlink.h \
    about.h \
    typeDefs.h \
    edict2.h \
    preference.h

FORMS    += jpconjmain.ui \
    about.ui \
    preference.ui

TRANSLATIONS    +=  localization/jpconj_en.ts\
                    localization/jpconj_ar.ts

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../libjpconj-release/release/ -llibjpconj
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../libjpconj-release/debug/ -llibjpconj
else:symbian: LIBS += -llibjpconj
else:unix: LIBS += -L$$PWD/../libjpconj-release/ -llibjpconj

INCLUDEPATH += $$PWD/../libjpconj-release
DEPENDPATH += $$PWD/../libjpconj-release

#LIBS    += -L../libjpconj-release -llibjpconj
#INCLUDEPATH +=  ../libjpconj-release
#OTHER_FILES +=
