.class public Lmtopsdk/mtop/upload/DefaultFileUploadListener;
.super Ljava/lang/Object;
.source "DefaultFileUploadListener.java"

# interfaces
.implements Lmtopsdk/mtop/upload/FileUploadBaseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultFileUploadListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v0, "mtopsdk.DefaultFileUploadListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError errCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";errMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p2, p3}, Lmtopsdk/mtop/upload/DefaultFileUploadListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    const-string/jumbo v0, "mtopsdk.DefaultFileUploadListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFinish url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p2}, Lmtopsdk/mtop/upload/DefaultFileUploadListener;->onFinish(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v0, "mtopsdk.DefaultFileUploadListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgress (percentage="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "mtopsdk.DefaultFileUploadListener"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
