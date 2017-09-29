.class public Lmtopsdk/mtop/protocol/ApiNameParamReader;
.super Ljava/lang/Object;
.source "ApiNameParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmtopsdk/mtop/protocol/ApiNameParamReader;->value:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "api"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmtopsdk/mtop/protocol/ApiNameParamReader;->value:Ljava/lang/String;

    return-object v0
.end method
