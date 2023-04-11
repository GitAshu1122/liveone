#include "readio.h"
#include <QString>
#include <QFile>
#include <QByteArray>
#include <QTextStream>
#include <QDebug>
readio::readio(QObject *parent)
    : QObject{parent}
{

}

static void process_line(const QByteArray &)
{
}

static void process_line(const QString &)
{
}


void readio::file()
{
    QFile file("my_file.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return ;

    while (!file.atEnd()) {
        QByteArray line = file.readLine();
        process_line(line);
        qDebug()<<"The readed text is : "<<line;
    }
}
