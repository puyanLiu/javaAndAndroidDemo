.class public Lmtopsdk/mtop/protocol/EcodeParamReader;
.super Ljava/lang/Object;
.source "EcodeParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmtopsdk/mtop/protocol/EcodeParamReader;->value:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "ecode"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmtopsdk/mtop/protocol/EcodeParamReader;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/protocol/EcodeParamReader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/protocol/EcodeParamReader;->value:Ljava/lang/String;

    goto :goto_0
.end method
