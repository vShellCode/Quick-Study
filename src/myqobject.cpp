#include "myqobject.h"

MyQObject::MyQObject(QObject *parent)
    : QObject{parent}
{

}

int MyQObject::iValue() const
{
    return m_iValue;
}

void MyQObject::setIValue(int newIValue)
{
    if (m_iValue == newIValue)
        return;
    m_iValue = newIValue;
    emit iValueChanged();
}

const QString &MyQObject::sString() const
{
    return m_sString;
}

void MyQObject::setSString(const QString &newSString)
{
    if (m_sString == newSString)
        return;
    m_sString = newSString;
    emit sStringChanged();
}

void MyQObject::func()
{
    qDebug() <<__FUNCTION__;
    emit cppSig(101,"wangwu");
}

void MyQObject::cppSlot(int i, QString s)
{
    qDebug()<< __FUNCTION__ << "  " << i << "   " << s;
}
