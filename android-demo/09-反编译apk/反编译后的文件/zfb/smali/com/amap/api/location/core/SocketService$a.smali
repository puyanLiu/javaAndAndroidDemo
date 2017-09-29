.class Lcom/amap/api/location/core/SocketService$a;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field b:Lcom/amap/api/location/core/SocketService;

.field final synthetic c:Lcom/amap/api/location/core/SocketService;


# direct methods
.method constructor <init>(Lcom/amap/api/location/core/SocketService;Lcom/amap/api/location/core/SocketService;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const v0, 0xaaa9

    iput v0, p0, Lcom/amap/api/location/core/SocketService$a;->a:I

    iput-object p2, p0, Lcom/amap/api/location/core/SocketService$a;->b:Lcom/amap/api/location/core/SocketService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService$a;->b:Lcom/amap/api/location/core/SocketService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/core/SocketService$a;->b:Lcom/amap/api/location/core/SocketService;

    invoke-virtual {v0}, Lcom/amap/api/location/core/SocketService;->apsInit()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/amap/api/location/core/SocketService$a;->a:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/amap/api/location/core/SocketService;->d:Ljava/net/ServerSocket;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    iget-boolean v0, v0, Lcom/amap/api/location/core/SocketService;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    iget-object v1, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    iget-object v1, v1, Lcom/amap/api/location/core/SocketService;->d:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/location/core/SocketService;->f:Ljava/net/Socket;

    iget-object v0, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    iget-object v1, p0, Lcom/amap/api/location/core/SocketService$a;->c:Lcom/amap/api/location/core/SocketService;

    iget-object v1, v1, Lcom/amap/api/location/core/SocketService;->f:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/amap/api/location/core/SocketService;->a(Lcom/amap/api/location/core/SocketService;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
