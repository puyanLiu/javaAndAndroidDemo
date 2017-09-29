.class public Lorg/jacoco/agent/rt/internal/Agent;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/agent/rt/IAgent;


# static fields
.field private static a:Lorg/jacoco/agent/rt/internal/Agent;


# instance fields
.field private final b:Lorg/jacoco/core/runtime/AgentOptions;

.field private final c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

.field private final d:Lorg/jacoco/core/runtime/RuntimeData;

.field private e:Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

.field private f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/Agent;->b:Lorg/jacoco/core/runtime/AgentOptions;

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal/Agent;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    new-instance v0, Lorg/jacoco/core/runtime/RuntimeData;

    invoke-direct {v0}, Lorg/jacoco/core/runtime/RuntimeData;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/jacoco/core/runtime/AbstractRuntime;->createRandomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "unknownhost"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lorg/jacoco/agent/rt/internal/Agent;
    .locals 3

    const-class v1, Lorg/jacoco/agent/rt/internal/Agent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jacoco/agent/rt/internal/Agent;->a:Lorg/jacoco/agent/rt/internal/Agent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "JaCoCo agent not started."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lorg/jacoco/agent/rt/internal/Agent;->a:Lorg/jacoco/agent/rt/internal/Agent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lorg/jacoco/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal/Agent;
    .locals 4

    const-class v1, Lorg/jacoco/agent/rt/internal/Agent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jacoco/agent/rt/internal/Agent;->a:Lorg/jacoco/agent/rt/internal/Agent;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jacoco/agent/rt/internal/Agent;

    sget-object v2, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-direct {v0, p0, v2}, Lorg/jacoco/agent/rt/internal/Agent;-><init>(Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/Agent;->startup()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lorg/jacoco/agent/rt/internal/Agent$1;

    invoke-direct {v3, v0}, Lorg/jacoco/agent/rt/internal/Agent$1;-><init>(Lorg/jacoco/agent/rt/internal/Agent;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    sput-object v0, Lorg/jacoco/agent/rt/internal/Agent;->a:Lorg/jacoco/agent/rt/internal/Agent;

    :cond_0
    sget-object v0, Lorg/jacoco/agent/rt/internal/Agent;->a:Lorg/jacoco/agent/rt/internal/Agent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method createAgentOutput()Lorg/jacoco/agent/rt/internal/output/IAgentOutput;
    .locals 3

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->b:Lorg/jacoco/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    sget-object v1, Lorg/jacoco/agent/rt/internal/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    new-instance v0, Lorg/jacoco/agent/rt/internal/output/FileOutput;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal/output/FileOutput;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/Agent;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;-><init>(Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/Agent;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;-><init>(Lorg/jacoco/agent/rt/internal/IExceptionLogger;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/jacoco/agent/rt/internal/output/NoneOutput;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal/output/NoneOutput;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dump(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->e:Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

    invoke-interface {v0, p1}, Lorg/jacoco/agent/rt/internal/output/IAgentOutput;->writeExecutionData(Z)V

    return-void
.end method

.method public getData()Lorg/jacoco/core/runtime/RuntimeData;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    return-object v0
.end method

.method public getExecutionData(Z)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Lorg/jacoco/core/data/ExecutionDataWriter;

    invoke-direct {v1, v0}, Lorg/jacoco/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v2, v1, v1, p1}, Lorg/jacoco/core/runtime/RuntimeData;->collect(Lorg/jacoco/core/data/IExecutionDataVisitor;Lorg/jacoco/core/data/ISessionInfoVisitor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/RuntimeData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jacoco/core/JaCoCo;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/RuntimeData;->reset()V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/runtime/RuntimeData;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->b:Lorg/jacoco/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/AgentOptions;->getDumpOnExit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->e:Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jacoco/agent/rt/internal/output/IAgentOutput;->writeExecutionData(Z)V

    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->e:Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

    invoke-interface {v0}, Lorg/jacoco/agent/rt/internal/output/IAgentOutput;->shutdown()V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->f:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->f:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/Agent;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startup()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->b:Lorg/jacoco/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/AgentOptions;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/jacoco/agent/rt/internal/Agent;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v1, v0}, Lorg/jacoco/core/runtime/RuntimeData;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal/Agent;->createAgentOutput()Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->e:Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->e:Lorg/jacoco/agent/rt/internal/output/IAgentOutput;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/Agent;->b:Lorg/jacoco/core/runtime/AgentOptions;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal/Agent;->d:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-interface {v0, v1, v2}, Lorg/jacoco/agent/rt/internal/output/IAgentOutput;->startup(Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/core/runtime/RuntimeData;)V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->b:Lorg/jacoco/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/AgentOptions;->getJmx()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jacoco/agent/rt/internal/JmxRegistration;

    invoke-direct {v0, p0}, Lorg/jacoco/agent/rt/internal/JmxRegistration;-><init>(Lorg/jacoco/agent/rt/IAgent;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/Agent;->f:Ljava/util/concurrent/Callable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/Agent;->c:Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0
.end method
