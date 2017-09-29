.class public Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;
.super Ljava/lang/Object;
.source "FileUploadBodyHandlerImpl.java"

# interfaces
.implements Lanetwork/channel/IBodyHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FileUploadBodyHandlerImpl"


# instance fields
.field private file:Ljava/io/File;

.field private isCompleted:Z

.field private offset:J

.field private patchSize:J

.field private postedLength:I

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->patchSize:J

    .line 21
    iput-wide v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    .line 22
    iput-boolean v0, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    .line 23
    iput v0, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    .line 28
    iput-object p1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->file:Ljava/io/File;

    .line 29
    iput-wide p2, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    .line 30
    iput-wide p4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->patchSize:J

    .line 31
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    return v0
.end method

.method public read([B)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 37
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->file:Ljava/io/File;

    if-nez v1, :cond_2

    .line 38
    :cond_0
    const-string/jumbo v1, "mtopsdk.FileUploadBodyHandlerImpl"

    const-string/jumbo v2, "[read(byte[] buffer)]parameter buffer or file is null"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-boolean v5, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    .line 88
    :cond_1
    :goto_0
    return v0

    .line 43
    :cond_2
    iget v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    int-to-long v1, v1

    iget-wide v3, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->patchSize:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 44
    iput-boolean v5, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    goto :goto_0

    .line 50
    :cond_3
    :try_start_0
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_4

    .line 51
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->file:Ljava/io/File;

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    .line 54
    :cond_4
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 55
    iget-wide v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_5

    iget v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-ltz v1, :cond_6

    .line 56
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    if-eqz v1, :cond_1

    .line 82
    :try_start_1
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string/jumbo v2, "mtopsdk.FileUploadBodyHandlerImpl"

    const-string/jumbo v3, "close RandomAccessFile error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :cond_6
    :try_start_2
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8

    .line 64
    iget v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    add-int/2addr v4, v1

    int-to-long v4, v4

    iget-wide v6, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->patchSize:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_9

    move v0, v1

    .line 69
    :goto_1
    iget v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    .line 70
    iget-wide v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    .line 71
    iget v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I

    int-to-long v4, v1

    iget-wide v6, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->patchSize:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    iget-wide v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->offset:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_8

    .line 72
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :cond_8
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    if-eqz v1, :cond_1

    .line 82
    :try_start_3
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    const-string/jumbo v2, "mtopsdk.FileUploadBodyHandlerImpl"

    const-string/jumbo v3, "close RandomAccessFile error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 67
    :cond_9
    :try_start_4
    iget-wide v4, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->patchSize:J

    iget v0, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->postedLength:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-int v0, v0

    goto :goto_1

    .line 76
    :catch_2
    move-exception v1

    .line 77
    :try_start_5
    const-string/jumbo v2, "mtopsdk.FileUploadBodyHandlerImpl"

    const-string/jumbo v3, "[read]write Body error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    if-eqz v1, :cond_1

    .line 82
    :try_start_6
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 83
    :catch_3
    move-exception v1

    .line 84
    const-string/jumbo v2, "mtopsdk.FileUploadBodyHandlerImpl"

    const-string/jumbo v3, "close RandomAccessFile error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->isCompleted:Z

    if-eqz v1, :cond_a

    .line 82
    :try_start_7
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 85
    :cond_a
    :goto_2
    throw v0

    .line 83
    :catch_4
    move-exception v1

    .line 84
    const-string/jumbo v2, "mtopsdk.FileUploadBodyHandlerImpl"

    const-string/jumbo v3, "close RandomAccessFile error"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
