HEADERS = Qarma.h
SOURCES = Qarma.cpp
QT      += gui widgets
unix:!macx:QT += x11extras
TARGET  = qarma

!DISABLE_DBUS {
	DEFINES += DBUS_ENABLED
	QT += dbus
}

unix:!macx:LIBS    += -lX11
unix:!macx:DEFINES += WS_X11

target.path += /usr/bin
INSTALLS += target