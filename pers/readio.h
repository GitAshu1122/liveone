#ifndef READIO_H
#define READIO_H

#include <QObject>

class readio : public QObject
{
    Q_OBJECT
public:
    explicit readio(QObject *parent = nullptr);
    Q_PROPERTY(void file READ file WRITE filw NOTIFY fileChanged)
    void file();



signals:

void filechanged();


private slots:
    void filew();
};

#endif // READIO_H
