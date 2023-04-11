#include "readlist.h"
#include <QString>
#include <QFile>
#include <QByteArray>
#include <QTextStream>
#include <QDebug>
readlist::readlist(QObject *parent)
    : QObject{parent}
{

}
static void process_line(const QByteArray &)
{
}

static void process_line(const QString &)
{
}
void readlist::readlist1()
{
    QFile file("my_file.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
             return;
    while (!file.atEnd()) {
            QByteArray line = file.readLine();
            process_line(line);
            qDebug()<<"The File contains"<<line;

    }
}

void readlist::setReadlist()
{
    readlist1();
    emit readlistChanged();
}
