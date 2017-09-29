.class public Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;
.super Lmtopsdk/mtop/transform/bodyhandler/BodyHandlerFactory;
.source "MtopGzipBodyHandlerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopGzipBodyHandlerFactory"


# instance fields
.field private bodydata:[B

.field private gzipThreshold:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lmtopsdk/mtop/transform/bodyhandler/BodyHandlerFactory;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    .line 24
    iput-object p1, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    .line 25
    iput p2, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->gzipThreshold:I

    .line 26
    iput-object p3, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->headers:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public createBodyHandler()Lanetwork/channel/IBodyHandler;
    .locals 6

    .prologue
    .line 32
    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    array-length v0, v0

    if-nez v0, :cond_2

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 60
    :cond_1
    :goto_0
    return-object v0

    .line 37
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    array-length v1, v0

    .line 38
    iget v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->gzipThreshold:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->headers:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->gzipThreshold:I

    if-ge v1, v0, :cond_4

    .line 39
    :cond_3
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    iget-object v1, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    invoke-direct {v0, v1}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    invoke-static {v0}, Lmtopsdk/common/util/GzipUtil;->gzip([B)[B

    move-result-object v2

    .line 45
    if-eqz v2, :cond_5

    .line 46
    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->headers:Ljava/util/Map;

    const-string/jumbo v3, "content-length"

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->headers:Ljava/util/Map;

    const-string/jumbo v3, "content-encoding"

    const-string/jumbo v4, "gzip"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    invoke-direct {v0, v2}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    .line 49
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string/jumbo v3, "mtopsdk.MtopGzipBodyHandlerFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[createBodyHandler]bodydata length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ";gziped bodylength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_5
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    iget-object v1, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopGzipBodyHandlerFactory;->bodydata:[B

    invoke-direct {v0, v1}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    .line 55
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string/jumbo v1, "mtopsdk.MtopGzipBodyHandlerFactory"

    const-string/jumbo v2, "[createBodyHandler] gzip bodydata failed. "

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
