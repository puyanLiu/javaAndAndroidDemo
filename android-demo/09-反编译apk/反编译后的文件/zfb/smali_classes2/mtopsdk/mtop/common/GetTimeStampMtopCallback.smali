.class public Lmtopsdk/mtop/common/GetTimeStampMtopCallback;
.super Ljava/lang/Object;
.source "GetTimeStampMtopCallback.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.GetTimeStampMtopCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->computeTimeOffset(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 23
    :cond_0
    return-void
.end method
