.class public Lcom/alipay/mobile/nebulacore/download/DownloadEntity;
.super Ljava/lang/Object;
.source "DownloadEntity.java"


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x4000

.field public static final PROGRESS_DELTA:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "DownloadEntity"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:J

.field private f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

.field private g:J

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->create(Ljava/lang/String;)Z

    .line 38
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->a:Ljava/io/RandomAccessFile;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->h:J

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->c:I

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->b:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->d:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->i:Z

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->e:J

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "DownloadEntity"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/alipay/mobile/nebulacore/download/TransferListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    return-object v0
.end method

.method public getWritable()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->i:Z

    return v0
.end method

.method public input(Ljava/io/InputStream;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/16 v1, 0x4000

    :try_start_0
    new-array v1, v1, [B

    .line 123
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->getWritable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    iget-wide v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->e:J

    iget-wide v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v3, v2}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    const-string/jumbo v2, "DownloadEntity"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string/jumbo v1, "DownloadEntity"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLength(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->d:J

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/download/TransferListener;->onTotalSize(J)V

    .line 52
    :cond_0
    return-void
.end method

.method public setListener(Lcom/alipay/mobile/nebulacore/download/TransferListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    .line 70
    return-void
.end method

.method public setWritable(Z)V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->i:Z

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .locals 7

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->i:Z

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->h:J

    .line 96
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->e:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->e:J

    .line 98
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    if-eqz v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->e:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->d:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 104
    iget-wide v3, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->g:J

    sub-long v3, v1, v3

    .line 106
    iget v5, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->c:I

    if-le v0, v5, :cond_0

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 110
    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->c:I

    .line 111
    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->g:J

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->f:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->c:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/download/TransferListener;->onProgress(I)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
