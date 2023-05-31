#ifndef MYQOBJECT_H
#define MYQOBJECT_H

#include <QObject>
#include <QtQml>
class MyQObject : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit MyQObject(QObject *parent = nullptr);

    static MyQObject* getInstence()
    {
        static MyQObject* obj = new MyQObject;
        return obj;
    }


    int iValue() const;
    void setIValue(int newIValue);

    const QString &sString() const;
    void setSString(const QString &newSString);
   Q_INVOKABLE void func();
public slots:
    void cppSlot(int i, QString s);


private:
    int m_iValue;
    QString m_sString;


//写法1
//    Q_PROPERTY(int iValue READ iValue WRITE setIValue NOTIFY iValueChanged)
//    Q_PROPERTY(QString sString READ sString WRITE setSString NOTIFY sStringChanged)

    //写法2
    Q_PROPERTY(int iValue MEMBER m_iValue NOTIFY iValueChanged)

    Q_PROPERTY(QString sString MEMBER m_sString NOTIFY sStringChanged)
signals:

    void cppSig(QVariant i, QVariant s);
    void iValueChanged();
    void sStringChanged();
};

#endif // MYQOBJECT_H
