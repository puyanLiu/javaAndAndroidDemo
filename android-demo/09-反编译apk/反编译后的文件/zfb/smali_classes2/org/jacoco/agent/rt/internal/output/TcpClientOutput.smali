.class public Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/agent/rt/internal/output/IAgentOutput;


# instance fields
.field private final a:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

.field private b:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->a:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->b:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal/IExceptionLogger;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->a:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    return-object v0
.end method


# virtual methods
.method protected createSocket(Lorg/jacoco/core/runtime/AgentOptions;)Ljava/net/Socket;
    .locals 3

    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->b:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->close()V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public startup(Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->createSocket(Lorg/jacoco/core/runtime/AgentOptions;)Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    invoke-direct {v1, v0, p2}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;-><init>(Ljava/net/Socket;Lorg/jacoco/core/runtime/RuntimeData;)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->b:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->b:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->init()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput$1;

    invoke-direct {v1, p0}, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput$1;-><init>(Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->c:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->c:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeExecutionData(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->b:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->writeExecutionData(Z)V

    return-void
.end method
