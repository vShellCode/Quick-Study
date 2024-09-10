#ifndef FRAMELESSWINDOW_H
#define FRAMELESSWINDOW_H
#include <QQuickWindow>

class FramelessWindow : public QQuickWindow
{
    Q_OBJECT

    enum MousePosition {
        TOPLEFT = 1,TOP,TOPRIGHT,LEFT,RIGHT,BOTTOMLEFT,BOTTOM,BOTTOMRIGHT,NORMAL
    };

public:
    FramelessWindow(QWindow* parrent = nullptr);

protected:
    void mousePressEvent(QMouseEvent* event);
    void mouseReleaseEvent(QMouseEvent* event);
    void mouseMoveEvent(QMouseEvent* event);

private:
    void setWindowGeometry(const QPointF &pos);
    void setCursorIcon();
    MousePosition getMousePos(QPointF &pos);
    // 缩放边距
    int step = 8;
    // 鼠标的大概位置
    MousePosition mouse_pos = NORMAL;
    // 起始位置
    QPointF start_pos;
    // 旧位置
    QPointF old_pos;
    // 旧大小
    QSize old_size;



};

#endif // FRAMELESSWINDOW_H
