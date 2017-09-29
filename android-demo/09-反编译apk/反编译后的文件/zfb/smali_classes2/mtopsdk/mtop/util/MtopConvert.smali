.class public Lmtopsdk/mtop/util/MtopConvert;
.super Ljava/lang/Object;
.source "MtopConvert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopConvert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p0}, Lmtopsdk/mtop/util/ReflectUtil;->convertToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public static inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-static {p0}, Lmtopsdk/mtop/util/ReflectUtil;->convertToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public static jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<*>;)",
            "Lmtopsdk/mtop/domain/BaseOutDo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const-string/jumbo v0, "mtopsdk.MtopConvert"

    const-string/jumbo v2, "outClass is null or jsondata is blank"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/BaseOutDo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v2, "mtopsdk.MtopConvert"

    const-string/jumbo v3, "[jsonToOutputDO]invoke JSON.parseObject error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lmtopsdk/mtop/domain/BaseOutDo;"
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 65
    :cond_0
    const-string/jumbo v0, "mtopsdk.MtopConvert"

    const-string/jumbo v1, "outClass is null or response is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lmtopsdk/mtop/util/MtopConvert;->jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseNetworkRlt(Lanetwork/channel/Response;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0, v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Lanetwork/channel/Response;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method
