TEMPLATE = app
QT += widgets

include($$absolute_path($$PWD/../../QtSkia/QtSkiaWidgetPublic.pri))
include($$absolute_path($$PWD/../Renderer/Renderer.pri))

CONFIG(debug, debug|release) {
    DESTDIR =$$absolute_path($$PWD/../../bin/debug)
} else {
    DESTDIR =$$absolute_path($$PWD/../../bin/release)
}
LIBS += -L$$DESTDIR -lQtSkiaWidget

HEADERS += \
    SkiaGLWidget.h

SOURCES += \
    main.cpp
