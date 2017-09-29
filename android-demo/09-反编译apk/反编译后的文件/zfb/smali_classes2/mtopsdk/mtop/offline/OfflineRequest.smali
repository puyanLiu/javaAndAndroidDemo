.class Lmtopsdk/mtop/offline/OfflineRequest;
.super Ljava/lang/Object;
.source "OfflineRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "OfflineRequest"


# instance fields
.field private fullBaseUrl:Ljava/lang/String;

.field private networkProp:Lmtopsdk/mtop/common/MtopNetworkProp;

.field private request:Lmtopsdk/mtop/domain/MtopRequest;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/MtopProxy;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequest;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 26
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequest;->networkProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 27
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getFullBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequest;->fullBaseUrl:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static fromByteArray([B)Lmtopsdk/mtop/offline/OfflineRequest;
    .locals 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 60
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/offline/OfflineRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 70
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    const-string/jumbo v3, "OfflineRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "read offline request from stream failed --"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 68
    :goto_1
    throw v0

    .line 69
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static toByteArray(Lmtopsdk/mtop/offline/OfflineRequest;)[B
    .locals 6

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    const-string/jumbo v3, "OfflineRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "write offline request to stream failed --"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 51
    :goto_1
    throw v0

    .line 52
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getMtopProxy()Lmtopsdk/mtop/MtopProxy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    new-instance v0, Lmtopsdk/mtop/MtopProxy;

    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequest;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v2, p0, Lmtopsdk/mtop/offline/OfflineRequest;->networkProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0, v1, v2, v3, v3}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 33
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequest;->fullBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/MtopProxy;->setFullBaseUrl(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method
