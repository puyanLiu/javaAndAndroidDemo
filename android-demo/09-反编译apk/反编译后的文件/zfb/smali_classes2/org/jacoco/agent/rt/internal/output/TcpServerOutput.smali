.class public Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/agent/rt/internal/output/IAgentOutput;


# instance fields
.field private a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

.field private final b:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

.field private c:Ljava/net/ServerSocket;

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->b:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->c:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal/output/TcpConnection;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;
    .locals 0

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal/IExceptionLogger;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->b:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    return-object v0
.end method


# virtual methods
.method protected createServerSocket(Lorg/jacoco/core/runtime/AgentOptions;)Ljava/net/ServerSocket;
    .locals 6

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions;->getPort()I

    move-result v1

    move v2, v1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "jacoco bind socket error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    const-string/jumbo v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->c:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->c:Ljava/net/ServerSocket;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->close()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startup(Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->createServerSocket(Lorg/jacoco/core/runtime/AgentOptions;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->c:Ljava/net/ServerSocket;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->c:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;

    invoke-direct {v1, p0, p2}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;-><init>(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;Lorg/jacoco/core/runtime/RuntimeData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->d:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->d:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public writeExecutionData(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->a:Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->writeExecutionData(Z)V

    :cond_0
    return-void
.end method
