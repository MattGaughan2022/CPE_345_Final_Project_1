
#ifndef __CPE_345_FINAL_PROJECT_1_FINAL_PROJECT_1_SINK_H_
#define __CPE_345_FINAL_PROJECT_1_FINAL_PROJECT_1_SINK_H_

#include <omnetpp.h>
#include "Sink.h"
using namespace omnetpp;

/**
 * TODO - Generated class
 */
class Final_Project_1_Sink : public queueing::Sink
{
    protected:
    int numjobsReceived;
    cStdDev delayStats;

    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
    virtual void refreshDisplay() const override;
    virtual void finish() override;
};

#endif
