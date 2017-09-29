.class public Lorg/jacoco/agent/rt/internal/output/FileOutput;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/agent/rt/internal/output/IAgentOutput;


# instance fields
.field private a:Lorg/jacoco/core/runtime/RuntimeData;

.field private b:Ljava/io/File;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->b:Ljava/io/File;

    iget-boolean v2, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->c:Z

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 0

    return-void
.end method

.method public final startup(Lorg/jacoco/core/runtime/AgentOptions;Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 2

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->a:Lorg/jacoco/core/runtime/RuntimeData;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions;->getDestfile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->b:Ljava/io/File;

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions;->getAppend()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->c:Z

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal/output/FileOutput;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public writeExecutionData(Z)V
    .locals 3

    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal/output/FileOutput;->a()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/jacoco/core/data/ExecutionDataWriter;

    invoke-direct {v0, v1}, Lorg/jacoco/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal/output/FileOutput;->a:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v2, v0, v0, p1}, Lorg/jacoco/core/runtime/RuntimeData;->collect(Lorg/jacoco/core/data/IExecutionDataVisitor;Lorg/jacoco/core/data/ISessionInfoVisitor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method
