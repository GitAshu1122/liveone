#ifndef READMENU_H
#define READMENU_H
#include <QString>

#include <QObject>

class ReadMenu : public QObject
{
    Q_OBJECT
public:
    explicit ReadMenu(QObject *parent = nullptr);
    void read();

signals:


private slots:
       QString mSource;

};

#endif // READMENU_H
