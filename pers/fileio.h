#ifndef FILEIO_H
#define FILEIO_H

#include <QObject>

class fileio : public QObject
{
    Q_OBJECT
public:
    explicit fileio(QObject *parent = nullptr);
    Q_PROPERTY(QString source
               READ source
               WRITE setSource
               NOTIFY sourceChanged)
    Q_INVOKABLE QString read();
    Q_INVOKABLE bool write(const QString& data);

    QString source() { return mSource; };

public slots:
    void setSource(const QString& source) { mSource = source; };

signals:
    void sourceChanged(const QString& source);
    void error(const QString& msg);

private:
    QString mSource;
};



#endif // FILEIO_H
