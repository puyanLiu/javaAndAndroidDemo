.class Lorg/luaj/vm2/lib/jse/JseProcess$1;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/io/OutputStream;

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/io/OutputStream;

.field private final e:Lorg/luaj/vm2/lib/jse/JseProcess;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/jse/JseProcess;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->e:Lorg/luaj/vm2/lib/jse/JseProcess;

    iput-object p2, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->c:Ljava/io/InputStream;

    iput-object p5, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->d:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->c:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->d:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->d:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseProcess$1;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
