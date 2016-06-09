#ifndef EMASTUDY_H
#define EMASTUDY_H

#include <map>
#include <string>
#include "types/tick.cuh"
#include "study.cuh"

class EmaStudy : public Study {
    private:
        double previousEma;

    public:
        EmaStudy(std::map<std::string, double> inputs, std::map<std::string, std::string> outputMap);
        void tick();
};

#endif
