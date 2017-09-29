.class public Lcom/alipay/mobile/nebulacore/download/UploadEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "UploadEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x4000

.field public static final PROGRESS_DELTA:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "UploadEntity"


# instance fields
.field protected final a:Ljava/io/File;

.field protected b:Lcom/alipay/mobile/nebulacore/download/TransferListener;

.field protected c:J

.field protected d:J

.field protected e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->setContentType(Ljava/lang/String;)V

    .line 46
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->a:Ljava/io/File;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->c:J

    .line 48
    iput-wide p2, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->d:J

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->e:Ljava/io/InputStream;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->e:Ljava/io/InputStream;

    iget-wide v1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v1, "UploadEntity"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getListener()Lcom/alipay/mobile/nebulacore/download/TransferListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->b:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public setListener(Lcom/alipay/mobile/nebulacore/download/TransferListener;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->b:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    .line 103
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;-><init>(Lcom/alipay/mobile/nebulacore/download/UploadEntity;Ljava/io/OutputStream;)V

    .line 73
    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->close()V

    .line 83
    return-void

    .line 76
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v3, v2}, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/UploadEntity;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/UploadEntity$UploadData;->close()V

    .line 82
    throw v0
.end method
