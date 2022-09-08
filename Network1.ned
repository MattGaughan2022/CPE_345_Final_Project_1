
import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


network Network1
{
    @display("bgb=966,578");
    submodules:
        SourceA: Source {
            @display("p=70,99;b=8,5");
        }
        SourceB: Source {
            @display("p=85,248");
        }
        SourceC: Source {
            @display("p=77,400");
        }
        passiveQueue: PassiveQueue {
            @display("p=241,95");
        }
        passiveQueue1: PassiveQueue {
            @display("p=246,251");
        }
        passiveQueue2: PassiveQueue {
            @display("p=244,404");
        }
        server: Server {
            @display("p=418,249");
        }
        classifier: Classifier {
            @display("p=545,247");
        }
        final_Project_1_SinkA: Final_Project_1_Sink {
            @display("p=721.4375,116.4");
        }
        final_Project_1_SinkB: Final_Project_1_Sink {
            @display("p=734.775,275.23752");
        }
        final_Project_1_SinkC: Final_Project_1_Sink {
            @display("p=731.1375,454.6875");
        }
    connections:
        SourceA.out --> passiveQueue.in++;
        SourceB.out --> passiveQueue1.in++;
        SourceC.out --> passiveQueue2.in++;
        passiveQueue.out++ --> server.in++;
        passiveQueue1.out++ --> server.in++;
        passiveQueue2.out++ --> server.in++;
        server.out --> classifier.in++;
        classifier.out++ --> final_Project_1_SinkA.in++;
        classifier.out++ --> final_Project_1_SinkB.in++;
        classifier.rest --> final_Project_1_SinkC.in++;
}
