.class public Lmtopsdk/mtop/protocol/NetQualityParamReader;
.super Ljava/lang/Object;
.source "NetQualityParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "nq"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lmtopsdk/mtop/protocol/NetQualityParamReader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
