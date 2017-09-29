.class public Lmtopsdk/mtop/protocol/LongtitudeParamReader;
.super Ljava/lang/Object;
.source "LongtitudeParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmtopsdk/mtop/protocol/LongtitudeParamReader;->value:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "lng"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmtopsdk/mtop/protocol/LongtitudeParamReader;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/protocol/LongtitudeParamReader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/protocol/LongtitudeParamReader;->value:Ljava/lang/String;

    goto :goto_0
.end method
