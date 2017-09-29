.class Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

.field final synthetic val$data:Lorg/jacoco/core/runtime/RuntimeData;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->val$data:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    new-instance v2, Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v3}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->val$data:Lorg/jacoco/core/runtime/RuntimeData;

    invoke-direct {v2, v3, v4}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;-><init>(Ljava/net/Socket;Lorg/jacoco/core/runtime/RuntimeData;)V

    invoke-static {v0, v2}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$102(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal/output/TcpConnection;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$100(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->init()V

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$100(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;->access$200(Lorg/jacoco/agent/rt/internal/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-void
.end method
