.class public Lmtopsdk/mtop/common/DefaultMtopCallback;
.super Ljava/lang/Object;
.source "DefaultMtopCallback.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;
.implements Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;
.implements Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultMtopCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 32
    const-string/jumbo v0, "mtopsdk.DefaultMtopCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive dataSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopProgressEvent;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopProgressEvent;->getTotal()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopProgressEvent;->getSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopProgressEvent;->getTotal()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 36
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 38
    const-string/jumbo v2, "mtopsdk.DefaultMtopCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "progress is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v0, "mtopsdk.DefaultMtopCallback"

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v0, "mtopsdk.DefaultMtopCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopHeaderEvent;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";header:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopHeaderEvent;->getHeader()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
