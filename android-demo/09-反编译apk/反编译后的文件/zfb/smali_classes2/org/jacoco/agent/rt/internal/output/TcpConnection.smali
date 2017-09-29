.class Lorg/jacoco/agent/rt/internal/output/TcpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/runtime/IRemoteCommandVisitor;


# instance fields
.field private final a:Lorg/jacoco/core/runtime/RuntimeData;

.field private final b:Ljava/net/Socket;

.field private c:Lorg/jacoco/core/runtime/RemoteControlWriter;

.field private d:Lorg/jacoco/core/runtime/RemoteControlReader;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->a:Lorg/jacoco/core/runtime/RuntimeData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->e:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Lorg/jacoco/core/runtime/RemoteControlWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/core/runtime/RemoteControlWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->c:Lorg/jacoco/core/runtime/RemoteControlWriter;

    new-instance v0, Lorg/jacoco/core/runtime/RemoteControlReader;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/core/runtime/RemoteControlReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->d:Lorg/jacoco/core/runtime/RemoteControlReader;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->d:Lorg/jacoco/core/runtime/RemoteControlReader;

    invoke-virtual {v0, p0}, Lorg/jacoco/core/runtime/RemoteControlReader;->setRemoteCommandVisitor(Lorg/jacoco/core/runtime/IRemoteCommandVisitor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->e:Z

    return-void
.end method

.method public run()V
    .locals 2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->d:Lorg/jacoco/core/runtime/RemoteControlReader;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/RemoteControlReader;->read()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->close()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->close()V

    goto :goto_0
.end method

.method public visitDumpCommand(ZZ)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->a:Lorg/jacoco/core/runtime/RuntimeData;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->c:Lorg/jacoco/core/runtime/RemoteControlWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->c:Lorg/jacoco/core/runtime/RemoteControlWriter;

    invoke-virtual {v0, v1, v2, p2}, Lorg/jacoco/core/runtime/RuntimeData;->collect(Lorg/jacoco/core/data/IExecutionDataVisitor;Lorg/jacoco/core/data/ISessionInfoVisitor;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->c:Lorg/jacoco/core/runtime/RemoteControlWriter;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/RemoteControlWriter;->sendCmdOk()V

    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->a:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/core/runtime/RuntimeData;->reset()V

    goto :goto_0
.end method

.method public writeExecutionData(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->visitDumpCommand(ZZ)V

    :cond_0
    return-void
.end method
