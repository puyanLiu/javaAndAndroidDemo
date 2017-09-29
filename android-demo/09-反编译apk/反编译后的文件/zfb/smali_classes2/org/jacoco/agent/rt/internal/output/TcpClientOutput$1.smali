.class Lorg/jacoco/agent/rt/internal/output/TcpClientOutput$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->access$000(Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal/output/TcpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal/output/TcpConnection;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;->access$100(Lorg/jacoco/agent/rt/internal/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal/IExceptionLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0
.end method
