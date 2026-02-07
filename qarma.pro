HEADERS = Qarma.h
SOURCES = Qarma.cpp
QT      += gui widgets
TARGET  = qarma

!DISABLE_DBUS {
	DEFINES += DBUS_ENABLED
	QT += dbus
}

!DISABLE_X11 {
	unix:!macx:LIBS    += -lX11
	unix:!macx:DEFINES += WS_X11

	lessThan(QT_MAJOR_VERSION, 6){
		unix:!macx:QT += x11extras
	}
}

# override: qmake PREFIX=/some/where/else
isEmpty(PREFIX) {
  PREFIX = /usr
}

target.path = $$PREFIX/bin

INSTALLS += target
