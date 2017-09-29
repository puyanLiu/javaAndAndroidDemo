.class public Lcom/alipay/mobile/emotion/step/PackageUnzipStep;
.super Lcom/alipay/mobile/emotion/step/Step;
.source "PackageUnzipStep.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PackageUnzipStep"


# instance fields
.field private isCancel:Z

.field private final mDestDir:Ljava/lang/String;

.field private final mZipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "PackageUnzipStep"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/step/Step;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->isCancel:Z

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mDestDir:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private deleteZip()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start error--->>>mDestDir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mDestDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->isCancel:Z

    .line 72
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->notifyStepError(Z)V

    .line 73
    return-void
.end method

.method public onPreStart()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mDestDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->isCancel:Z

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mZipFile:Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mDestDir:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->unZipFiles(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->notifyStepSuccess()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->deleteZip()V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start error--->>>mDestDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->mDestDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->notifyStepError(Z)V

    goto :goto_0
.end method

.method public unZipFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 79
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    const/4 v0, 0x1

    invoke-direct {v4, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 93
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->isCancel:Z

    if-nez v0, :cond_3

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 134
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :goto_1
    return-void

    .line 94
    :cond_4
    :try_start_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 95
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    move-object v2, v4

    .line 134
    :goto_2
    if-eqz v2, :cond_5

    .line 136
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    :cond_5
    :goto_3
    throw v0

    .line 111
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 113
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :cond_7
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 119
    :try_start_7
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v1

    .line 120
    const/16 v0, 0x2000

    :try_start_8
    new-array v0, v0, [B

    .line 122
    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 125
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 127
    :try_start_9
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 123
    :cond_8
    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v3, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 126
    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 127
    :goto_5
    :try_start_b
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v2}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 129
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_0
    move-exception v1

    goto :goto_3

    .line 142
    :catch_1
    move-exception v0

    goto :goto_1

    .line 133
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 126
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_5
.end method
