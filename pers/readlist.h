#ifndef READLIST_H
#define READLIST_H
#include <QString>
#include <QByteArray>
#include <QObject>

class readlist : public QObject
{
    Q_OBJECT
public:
    explicit readlist(QObject *parent = nullptr);
    Q_PROPERTY(void readlist1 READ readlist WRITE setReadlist NOTIFY readlistChanged)
    void readlist1();

signals:
    void readlistChanged();


private slots :
    void setReadlist();

private:



};

#endif // READLIST_H
