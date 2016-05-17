#ifndef POSITION_H
#define POSITION_H

#include <string>

class Position {
    private:
        const char *symbol;
        time_t timestamp;
        double price;
        double investment;
        double profitability;
        double closePrice;
        bool isOpen;
        time_t closeTimestamp;
        time_t expirationTimestamp;

    protected:
        virtual const char *getTransactionType() = 0;

    public:
        Position(const char *symbol, time_t timestamp, double price, double investment, double profitability, int expirationMinutes);
        virtual ~Position() {}
        const char *getSymbol();
        time_t getTimestamp();
        double getPrice();
        double getClosePrice();
        double getInvestment();
        double getProfitability();
        time_t getCloseTimestamp();
        time_t getExpirationTimestamp();
        bool getIsOpen();
        bool getHasExpired(time_t timestamp);
        void close(double price, time_t timestamp);
        virtual double getProfitLoss() = 0;
};

#endif
